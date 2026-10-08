#include "my_application.h"

#include <flutter_linux/flutter_linux.h>
#ifdef GDK_WINDOWING_X11
#include <gdk/gdkx.h>
#endif

#include "flutter/generated_plugin_registrant.h"

struct _MyApplication {
  GtkApplication parent_instance;
  char** dart_entrypoint_arguments;
};

G_DEFINE_TYPE(MyApplication, my_application, GTK_TYPE_APPLICATION)

// Copies PNG image data without going through text clipboard formats.
static void image_clipboard_method_call(FlMethodChannel* channel,
                                        FlMethodCall* call,
                                        gpointer user_data) {
  if (g_strcmp0(fl_method_call_get_name(call), "copyImage") != 0) {
    fl_method_call_respond_not_implemented(call, nullptr);
    return;
  }
  FlValue* args = fl_method_call_get_args(call);
  FlValue* bytes = args && fl_value_get_type(args) == FL_VALUE_TYPE_MAP
                      ? fl_value_lookup_string(args, "bytes")
                      : nullptr;
  if (!bytes || fl_value_get_type(bytes) != FL_VALUE_TYPE_UINT8_LIST ||
      fl_value_get_length(bytes) == 0) {
    fl_method_call_respond_error(call, "EMPTY_IMAGE", "PNG bytes are required",
                                 nullptr, nullptr);
    return;
  }
  g_autoptr(GError) error = nullptr;
  g_autoptr(GdkPixbufLoader) loader = gdk_pixbuf_loader_new_with_type("png", &error);
  if (!loader || !gdk_pixbuf_loader_write(loader, fl_value_get_uint8_list(bytes),
                                         fl_value_get_length(bytes), &error) ||
      !gdk_pixbuf_loader_close(loader, &error)) {
    // A loader must be closed even after a failed write.
    if (loader) gdk_pixbuf_loader_close(loader, nullptr);
    fl_method_call_respond_error(call, "INVALID_IMAGE",
                                 error ? error->message : "Invalid PNG image",
                                 nullptr, nullptr);
    return;
  }
  GdkPixbuf* image = gdk_pixbuf_loader_get_pixbuf(loader);
  if (!image) {
    fl_method_call_respond_error(call, "INVALID_IMAGE", "Invalid PNG image",
                                 nullptr, nullptr);
    return;
  }
  GtkClipboard* clipboard = gtk_clipboard_get(GDK_SELECTION_CLIPBOARD);
  gtk_clipboard_set_image(clipboard, image);
  gtk_clipboard_store(clipboard);
  g_autoptr(FlValue) success = fl_value_new_bool(TRUE);
  fl_method_call_respond_success(call, success, nullptr);
}

// Implements GApplication::activate.
static void my_application_activate(GApplication* application) {
  MyApplication* self = MY_APPLICATION(application);
  GtkWindow* window =
      GTK_WINDOW(gtk_application_window_new(GTK_APPLICATION(application)));

  // Use a header bar when running in GNOME as this is the common style used
  // by applications and is the setup most users will be using (e.g. Ubuntu
  // desktop).
  // If running on X and not using GNOME then just use a traditional title bar
  // in case the window manager does more exotic layout, e.g. tiling.
  // If running on Wayland assume the header bar will work (may need changing
  // if future cases occur).
  gboolean use_header_bar = TRUE;
#ifdef GDK_WINDOWING_X11
  GdkScreen* screen = gtk_window_get_screen(window);
  if (GDK_IS_X11_SCREEN(screen)) {
    const gchar* wm_name = gdk_x11_screen_get_window_manager_name(screen);
    if (g_strcmp0(wm_name, "GNOME Shell") != 0) {
      use_header_bar = FALSE;
    }
  }
#endif
  if (use_header_bar) {
    GtkHeaderBar* header_bar = GTK_HEADER_BAR(gtk_header_bar_new());
    gtk_widget_show(GTK_WIDGET(header_bar));
    gtk_header_bar_set_title(header_bar, "star_debug");
    gtk_header_bar_set_show_close_button(header_bar, TRUE);
    gtk_window_set_titlebar(window, GTK_WIDGET(header_bar));
  } else {
    gtk_window_set_title(window, "star_debug");
  }

  gtk_window_set_default_size(window, 400, 900);
  gtk_widget_show(GTK_WIDGET(window));

  g_autoptr(FlDartProject) project = fl_dart_project_new();
  fl_dart_project_set_dart_entrypoint_arguments(project, self->dart_entrypoint_arguments);

  FlView* view = fl_view_new(project);
  gtk_widget_show(GTK_WIDGET(view));
  gtk_container_add(GTK_CONTAINER(window), GTK_WIDGET(view));

  fl_register_plugins(FL_PLUGIN_REGISTRY(view));

  g_autoptr(FlStandardMethodCodec) clipboard_codec = fl_standard_method_codec_new();
  g_autoptr(FlMethodChannel) clipboard_channel = fl_method_channel_new(
      fl_engine_get_binary_messenger(fl_view_get_engine(view)),
      "com.stardebug/image_clipboard", FL_METHOD_CODEC(clipboard_codec));
  fl_method_channel_set_method_call_handler(clipboard_channel,
                                            image_clipboard_method_call,
                                            nullptr, nullptr);

  gtk_widget_grab_focus(GTK_WIDGET(view));
}

// Implements GApplication::local_command_line.
static gboolean my_application_local_command_line(GApplication* application, gchar*** arguments, int* exit_status) {
  MyApplication* self = MY_APPLICATION(application);
  // Strip out the first argument as it is the binary name.
  self->dart_entrypoint_arguments = g_strdupv(*arguments + 1);

  g_autoptr(GError) error = nullptr;
  if (!g_application_register(application, nullptr, &error)) {
     g_warning("Failed to register: %s", error->message);
     *exit_status = 1;
     return TRUE;
  }

  g_application_activate(application);
  *exit_status = 0;

  return TRUE;
}

// Implements GObject::dispose.
static void my_application_dispose(GObject* object) {
  MyApplication* self = MY_APPLICATION(object);
  g_clear_pointer(&self->dart_entrypoint_arguments, g_strfreev);
  G_OBJECT_CLASS(my_application_parent_class)->dispose(object);
}

static void my_application_class_init(MyApplicationClass* klass) {
  G_APPLICATION_CLASS(klass)->activate = my_application_activate;
  G_APPLICATION_CLASS(klass)->local_command_line = my_application_local_command_line;
  G_OBJECT_CLASS(klass)->dispose = my_application_dispose;
}

static void my_application_init(MyApplication* self) {}

MyApplication* my_application_new() {
  return MY_APPLICATION(g_object_new(my_application_get_type(),
                                     "application-id", APPLICATION_ID,
                                     "flags", G_APPLICATION_NON_UNIQUE,
                                     nullptr));
}
