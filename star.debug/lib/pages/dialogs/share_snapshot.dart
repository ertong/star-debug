import 'dart:convert';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:star_debug/messages/i18n.dart';
import 'package:star_debug/channel/image_clipboard.dart';
import 'package:star_debug/pages/snapshot.dart';
import 'package:star_debug/pages/view/share_image.dart';
import 'package:star_debug/preloaded.dart';
import 'package:star_debug/space/space_parser.dart';
import 'package:star_debug/utils/log_utils.dart';
import 'package:star_debug/utils/obstruction_map_context.dart';
import 'package:star_debug/utils/share_export.dart';
import 'package:star_debug/utils/snapshot.dart';
import 'package:star_debug/utils/view_options.dart';

class ShareSnapshotDialog extends StatefulWidget {
  final Snapshot snap;
  final MapSourceMode sourceMode;

  /// Report provenance can differ from the frozen image's map source mode.
  final MapSourceMode? exportOrigin;
  final ShareFormat initialFormat;
  final bool allowScreenshot;
  final bool showInApp;

  const ShareSnapshotDialog({
    super.key,
    required this.snap,
    required this.sourceMode,
    this.exportOrigin,
    this.initialFormat = ShareFormat.screenshot,
    this.allowScreenshot = true,
    this.showInApp = true,
  });

  @override
  State<ShareSnapshotDialog> createState() => _ShareSnapshotDialogState();
}

class _ShareSnapshotDialogState extends State<ShareSnapshotDialog> {
  final options = ViewOptions()
    ..hideLocation = true
    ..hideRouterClients = true;
  final shareButtonKey = GlobalKey();
  late ShareFormat format;
  SharePayload? payload;
  Uint8List? image;
  bool busy = false;
  String? error;

  @override
  void initState() {
    super.initState();
    format =
        !widget.allowScreenshot &&
            widget.initialFormat == ShareFormat.screenshot
        ? ShareFormat.json
        : widget.initialFormat;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted && format != ShareFormat.screenshot) prepare();
    });
  }

  void change(VoidCallback update) {
    setState(() {
      update();
      payload = null;
      image = null;
      error = null;
    });
    if (format != ShareFormat.screenshot) prepare();
  }

  Future<void> prepare() async {
    if (busy || !mounted) return;
    setState(() {
      busy = true;
      payload = null;
      image = null;
      error = null;
    });
    try {
      await buildPayload();
    } catch (e, s) {
      LogUtils.ers('ShareSnapshot', 'Preparing export', e, s);
      if (mounted) error = '$e';
    } finally {
      if (mounted) setState(() => busy = false);
    }
  }

  Future<void> buildPayload() async {
    if (format == ShareFormat.screenshot) {
      final bytes = await captureShareImage(
        context,
        ShareExport.redactedSnapshot(widget.snap, options),
        widget.sourceMode,
        options,
      );
      if (!mounted) return;
      image = bytes;
      payload = SharePayload(
        text: '',
        filename: ShareExport.filename(
          widget.snap,
          options,
          'screenshot',
          'png',
        ),
        mimeType: 'image/png',
        subject: M.sharing.screenshot,
      );
    } else {
      payload = ShareExport.build(
        widget.snap,
        format: format,
        options: options,
        appVersion: R.versionName,
        sourceMode: widget.exportOrigin ?? widget.sourceMode,
      );
    }
  }

  Uint8List get bytes =>
      image ?? Uint8List.fromList(utf8.encode(payload!.text));

  Future<void> deliver(Future<void> Function() action) async {
    if (busy || !mounted) return;
    setState(() {
      busy = true;
      error = null;
    });
    try {
      if (payload == null) await buildPayload();
      if (!mounted || payload == null) return;
      await action();
    } catch (e, s) {
      LogUtils.ers('ShareSnapshot', 'Delivering export', e, s);
      if (mounted) error = '$e';
    } finally {
      if (mounted) setState(() => busy = false);
    }
  }

  void message(String text) {
    if (mounted) R.showSnackBarText(text);
  }

  Future<void> copy() => deliver(() async {
    if (format == ShareFormat.screenshot) {
      await ImageClipboard.copyPng(image!);
    } else {
      await Clipboard.setData(ClipboardData(text: payload!.text));
    }
    message(M.general.copied_to_clipboard);
  });

  Future<void> save() => deliver(() async {
    final uri = await FilePicker.saveFile(
      dialogTitle: M.general.save_as,
      fileName: payload!.filename,
      mimeType: payload!.mimeType,
      bytes: bytes,
    );
    if (uri != null) message(M.sharing.saved(uri.toString()));
  });

  Rect shareOrigin() {
    final box = shareButtonKey.currentContext?.findRenderObject();
    if (box is RenderBox && box.hasSize && !box.size.isEmpty) {
      return box.localToGlobal(Offset.zero) & box.size;
    }
    return const Rect.fromLTWH(0, 0, 1, 1);
  }

  Future<void> share() => deliver(() async {
    final origin = shareOrigin();
    if (format == ShareFormat.inventoryText ||
        format == ShareFormat.diagnosticText) {
      await SharePlus.instance.share(
        ShareParams(
          text: payload!.text,
          subject: payload!.subject,
          sharePositionOrigin: origin,
        ),
      );
    } else {
      final root = await getTemporaryDirectory();
      final directory = await root.createTemp('star-debug-share-');
      final path = '${directory.path}/${payload!.filename}';
      await File(path).writeAsBytes(bytes, flush: true);
      if (!mounted) return;
      await SharePlus.instance.share(
        ShareParams(
          files: [XFile(path, mimeType: payload!.mimeType)],
          subject: payload!.subject,
          sharePositionOrigin: origin,
        ),
      );
    }
  });

  Future<void> viewInApp() => deliver(() async {
    final snap = SpaceParser.ofJsonStr(payload!.text).toSnapshot();
    final navigator = Navigator.of(context);
    navigator.pop();
    await navigator.push(
      MaterialPageRoute(
        builder: (_) => SnapshotPage(
          snap: snap,
          sourceMode: MapSourceMode.imported,
          onClose: navigator.pop,
        ),
      ),
    );
  });

  IconData formatIcon(ShareFormat value) => switch (value) {
    ShareFormat.json => Icons.data_object,
    ShareFormat.screenshot => Icons.image_outlined,
    ShareFormat.diagnosticText => Icons.article_outlined,
    ShareFormat.inventoryText => Icons.inventory_2_outlined,
  };

  String label(ShareFormat value) => switch (value) {
    ShareFormat.json => M.sharing.json,
    ShareFormat.screenshot => M.sharing.image,
    ShareFormat.diagnosticText => M.sharing.diagnostics,
    ShareFormat.inventoryText => M.sharing.inventory,
  };

  String get description => switch (format) {
    ShareFormat.json => M.sharing.json_description,
    ShareFormat.screenshot => M.sharing.screenshot_description,
    ShareFormat.diagnosticText => M.sharing.full_description,
    ShareFormat.inventoryText => M.sharing.compact_description,
  };

  Widget formatTile(ShareFormat value) {
    final colors = Theme.of(context).colorScheme;
    final selected = value == format;
    return Semantics(
      selected: selected,
      child: Material(
        color: selected ? colors.primaryContainer : colors.surface,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(
            color: selected ? colors.primary : colors.outlineVariant,
            width: selected ? 1.5 : 1,
          ),
        ),
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: busy
              ? null
              : () {
                  if (value != format) change(() => format = value);
                },
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(formatIcon(value), size: 22, color: colors.primary),
                    const Spacer(),
                    if (selected)
                      Icon(Icons.check_circle, size: 18, color: colors.primary)
                    else
                      Text(
                        value == ShareFormat.json
                            ? 'JSON'
                            : value == ShareFormat.screenshot
                            ? 'PNG'
                            : 'MD',
                        style: Theme.of(context).textTheme.labelSmall
                            ?.copyWith(color: colors.onSurfaceVariant),
                      ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  label(value),
                  style: Theme.of(context).textTheme.bodyMedium
                      ?.copyWith(fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget privacyChip(
    String label,
    String tooltip,
    bool value,
    void Function(bool) update,
  ) => Tooltip(
    message: value ? M.sharing.include_field(label) : tooltip,
    child: FilterChip(
      avatar: Icon(
        value ? Icons.visibility_off_outlined : Icons.visibility_outlined,
        size: 18,
      ),
      label: Text(
        label,
        semanticsLabel: M.sharing.field_visibility(
          label,
          value ? M.sharing.hidden : M.sharing.included,
        ),
      ),
      showCheckmark: false,
      selected: value,
      onSelected: busy ? null : (value) => change(() => update(value)),
    ),
  );

  Widget preview(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Container(
      height: MediaQuery.sizeOf(context).height < 720 ? 180 : 220,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: colors.onSurface.withAlpha(5),
        border: Border.all(color: colors.outlineVariant),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          if (image != null)
            InteractiveViewer(child: Image.memory(image!, fit: BoxFit.contain))
          else if (payload != null)
            SingleChildScrollView(
              padding: const EdgeInsets.all(14),
              child: SelectableText(
                payload!.text,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  fontFamily: format == ShareFormat.json ? 'monospace' : null,
                  height: 1.5,
                  color: colors.onSurface,
                ),
              ),
            )
          else if (busy)
            const Center(child: CircularProgressIndicator())
          else if (format == ShareFormat.screenshot)
            Center(
              child: FilledButton.tonalIcon(
                onPressed: prepare,
                icon: const Icon(Icons.image_outlined),
                label: Text(M.sharing.prepare),
              ),
            )
          else if (error != null)
            Center(child: Icon(Icons.error_outline, color: colors.error)),
          if (busy && payload != null)
            const Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: LinearProgressIndicator(),
            ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;
    final hidden = [
      options.hideIds,
      options.hideMac,
      options.hideIp,
      options.hideLocation,
      options.hideRouterClients,
    ].where((value) => value).length;
    final formats = [
      ShareFormat.json,
      if (widget.allowScreenshot) ShareFormat.screenshot,
      ShareFormat.diagnosticText,
      ShareFormat.inventoryText,
    ];
    final nativeShare =
        Platform.isAndroid || Platform.isIOS || Platform.isMacOS;
    final enabled =
        !busy && (payload != null || format == ShareFormat.screenshot);
    return Dialog(
      backgroundColor: colors.surface,
      insetPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      clipBehavior: Clip.antiAlias,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: 560,
          maxHeight: MediaQuery.sizeOf(context).height - 48,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 16, 12, 16),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: colors.primaryContainer,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(
                      Icons.share_outlined,
                      color: colors.primary,
                      size: 22,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          M.general.share,
                          style: theme.textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          M.sharing.choose_format,
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: colors.onSurfaceVariant,
                          ),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    tooltip: M.general.close,
                    onPressed: () => Navigator.of(context).pop(),
                    icon: const Icon(Icons.close),
                  ),
                ],
              ),
            ),
            Flexible(
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    for (var i = 0; i < formats.length; i += 2)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: IntrinsicHeight(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Expanded(child: formatTile(formats[i])),
                              const SizedBox(width: 10),
                              Expanded(
                                child: i + 1 < formats.length
                                    ? formatTile(formats[i + 1])
                                    : const SizedBox(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    Text(
                      description,
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: colors.onSurfaceVariant,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Theme(
                      data: theme.copyWith(dividerColor: Colors.transparent),
                      child: ExpansionTile(
                        key: const PageStorageKey('share-privacy'),
                        tilePadding: EdgeInsets.zero,
                        leading: Icon(
                          Icons.shield_outlined,
                          size: 20,
                          color: colors.onSurfaceVariant,
                        ),
                        title: Text(
                          M.sharing.privacy,
                          style: theme.textTheme.bodyMedium,
                        ),
                        subtitle: Text(M.sharing.hidden_count(hidden)),
                        childrenPadding: const EdgeInsets.only(bottom: 12),
                        expandedCrossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            M.sharing.hide_fields,
                            style: theme.textTheme.bodySmall,
                          ),
                          const SizedBox(height: 6),
                          Wrap(
                            spacing: 8,
                            runSpacing: 4,
                            children: [
                              privacyChip(
                                M.sharing.identifiers,
                                M.sharing.hide_ids,
                                options.hideIds,
                                (v) => options.hideIds = v,
                              ),
                              privacyChip(
                                'MAC',
                                M.sharing.hide_mac,
                                options.hideMac,
                                (v) => options.hideMac = v,
                              ),
                              privacyChip(
                                'IP',
                                M.sharing.hide_ip,
                                options.hideIp,
                                (v) => options.hideIp = v,
                              ),
                              privacyChip(
                                M.sharing.location_label,
                                M.sharing.hide_location,
                                options.hideLocation,
                                (v) => options.hideLocation = v,
                              ),
                              privacyChip(
                                M.sharing.clients_label,
                                M.sharing.hide_clients,
                                options.hideRouterClients,
                                (v) => options.hideRouterClients = v,
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Text(
                            M.sharing.credentials_hint,
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: colors.onSurfaceVariant,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            M.sharing.preview,
                            style: theme.textTheme.titleSmall?.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        if (widget.showInApp && format == ShareFormat.json)
                          IconButton(
                            tooltip: M.general.view_in_app,
                            onPressed: enabled ? viewInApp : null,
                            icon: const Icon(Icons.open_in_new, size: 18),
                          ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    preview(context),
                    if (error != null) ...[
                      const SizedBox(height: 12),
                      Text(error!, style: TextStyle(color: colors.error)),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: busy ? null : prepare,
                          child: Text(M.sharing.retry),
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ),
            Divider(height: 1, color: colors.outlineVariant),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  IconButton.outlined(
                    tooltip: M.general.save_as,
                    onPressed: enabled ? save : null,
                    icon: const Icon(Icons.file_download_outlined),
                  ),
                  if (nativeShare) ...[
                    const SizedBox(width: 8),
                    IconButton.outlined(
                      tooltip: M.sharing.copy,
                      onPressed: enabled ? copy : null,
                      icon: const Icon(Icons.copy_outlined),
                    ),
                  ],
                  const SizedBox(width: 12),
                  Expanded(
                    child: FilledButton.icon(
                      key: shareButtonKey,
                      onPressed: !enabled
                          ? null
                          : nativeShare
                          ? share
                          : copy,
                      icon: Icon(
                        nativeShare
                            ? Icons.share_outlined
                            : Icons.copy_outlined,
                      ),
                      label: Text(
                        nativeShare ? M.general.share : M.sharing.copy,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
