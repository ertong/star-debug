package com.stardebug;

import android.app.Activity;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.net.Uri;
import androidx.core.content.FileProvider;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;

public class ImageClipboardHandler implements MethodChannel.MethodCallHandler {
    private final Activity activity;

    public ImageClipboardHandler(Activity activity) {
        this.activity = activity;
    }

    @Override
    public void onMethodCall(MethodCall call, MethodChannel.Result result) {
        if (!call.method.equals("copyImage")) {
            result.notImplemented();
            return;
        }
        byte[] bytes = call.argument("bytes");
        if (bytes == null || bytes.length == 0) {
            result.error("EMPTY_IMAGE", "Image bytes are required", null);
            return;
        }
        String mimeType = call.argument("mimeType");
        if (mimeType == null) mimeType = "image/png";
        final String extension;
        if (mimeType.equals("image/jpeg")) {
            extension = ".jpg";
        } else if (mimeType.equals("image/png")) {
            extension = ".png";
        } else {
            result.error("INVALID_IMAGE_TYPE", "JPEG or PNG image bytes are required", null);
            return;
        }
        MainActivity.executor.submit(() -> {
            File image = null;
            try {
                File directory = new File(activity.getCacheDir(), "clipboard");
                if (!directory.isDirectory() && !directory.mkdirs()) {
                    throw new IOException("Could not create image clipboard directory");
                }
                image = File.createTempFile("starlink-", extension, directory);
                try (FileOutputStream output = new FileOutputStream(image)) {
                    output.write(bytes);
                }
                Uri uri = FileProvider.getUriForFile(activity,
                        activity.getPackageName() + ".imageclipboard", image);
                final File completedImage = image;
                activity.runOnUiThread(() -> {
                    try {
                        ClipboardManager clipboard = (ClipboardManager)
                                activity.getSystemService(Context.CLIPBOARD_SERVICE);
                        clipboard.setPrimaryClip(ClipData.newUri(
                                activity.getContentResolver(), "StarDebug image", uri));
                        // Paste resolves the URI later; retain the cache file after copying.
                        result.success(true);
                    } catch (Exception e) {
                        completedImage.delete();
                        result.error("COPY_IMAGE_ERROR", e.getMessage(), null);
                    }
                });
            } catch (Exception e) {
                if (image != null) image.delete();
                activity.runOnUiThread(() -> result.error("COPY_IMAGE_ERROR", e.getMessage(), null));
            }
        });
    }
}
