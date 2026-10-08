import 'dart:convert';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:star_debug/messages/i18n.dart';
import 'package:star_debug/pages/debug_data.dart';
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
  final ShareFormat initialFormat;
  final bool allowScreenshot;
  final bool showInApp;

  const ShareSnapshotDialog({
    super.key,
    required this.snap,
    required this.sourceMode,
    this.initialFormat = ShareFormat.json,
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
  late final TextEditingController kit;
  late final TextEditingController utid;
  late final TextEditingController serial;
  late final TextEditingController account;
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
    final identifiers = ShareExport.identifiersFor(widget.snap);
    kit = TextEditingController(text: identifiers.kitNumber);
    utid = TextEditingController(text: identifiers.utid);
    serial = TextEditingController(text: identifiers.dishSerialNumber);
    account = TextEditingController(text: identifiers.accountNumber);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted && format != ShareFormat.screenshot) prepare();
    });
  }

  @override
  void dispose() {
    kit.dispose();
    utid.dispose();
    serial.dispose();
    account.dispose();
    super.dispose();
  }

  ShareIdentifiers get identifiers => ShareIdentifiers(
    kitNumber: kit.text,
    utid: utid.text,
    dishSerialNumber: serial.text,
    accountNumber: account.text,
  );

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
          filename: 'starlink-${widget.snap.timestamp}-screenshot.jpg',
          mimeType: 'image/jpeg',
          subject: M.sharing.screenshot,
        );
      } else {
        payload = ShareExport.build(
          widget.snap,
          format: format,
          options: options,
          identifiers: identifiers,
          appVersion: R.versionName,
          sourceMode: widget.sourceMode,
        );
      }
    } catch (e, s) {
      LogUtils.ers('ShareSnapshot', 'Preparing export', e, s);
      if (mounted) error = '$e';
    } finally {
      if (mounted) setState(() => busy = false);
    }
  }

  Uint8List get bytes =>
      image ?? Uint8List.fromList(utf8.encode(payload!.text));

  Future<void> deliver(Future<void> Function() action) async {
    if (busy || payload == null) return;
    setState(() {
      busy = true;
      error = null;
    });
    try {
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
    await Clipboard.setData(ClipboardData(text: payload!.text));
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
      final directory = await Directory('${root.path}/star-debug-share-')
          .createTemp();
      final path = '${directory.path}/${payload!.filename}';
      await File(path).writeAsBytes(bytes, flush: true);
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
      MaterialPageRoute(builder: (_) => DebugDataPage(snap: snap)),
    );
  });

  String label(ShareFormat value) => switch (value) {
    ShareFormat.json => M.sharing.json,
    ShareFormat.screenshot => M.sharing.screenshot,
    ShareFormat.diagnosticText => M.sharing.full_text,
    ShareFormat.inventoryText => M.sharing.compact_text,
  };

  String get description => switch (format) {
    ShareFormat.json => M.sharing.json_description,
    ShareFormat.screenshot => M.sharing.screenshot_description,
    ShareFormat.diagnosticText => M.sharing.full_description,
    ShareFormat.inventoryText => M.sharing.compact_description,
  };

  Widget checkbox(String label, bool value, void Function(bool) update) =>
      CheckboxListTile(
        dense: true,
        contentPadding: EdgeInsets.zero,
        controlAffinity: ListTileControlAffinity.leading,
        title: Text(label),
        value: value,
        onChanged: busy ? null : (value) => change(() => update(value!)),
      );

  Widget field(String label, TextEditingController controller) => Padding(
    padding: const EdgeInsets.only(bottom: 10),
    child: TextField(
      controller: controller,
      enabled: !busy,
      autocorrect: false,
      enableSuggestions: false,
      decoration: InputDecoration(labelText: label),
      onChanged: (_) => change(() {}),
    ),
  );

  @override
  Widget build(BuildContext context) {
    final hidden = [
      if (options.hideIds) M.sharing.ids,
      if (options.hideMac) M.sharing.mac,
      if (options.hideIp) M.sharing.ip,
      if (options.hideLocation) M.sharing.location,
      if (options.hideRouterClients) M.sharing.clients,
    ];
    return AlertDialog(
      scrollable: true,
      title: Row(
        children: [
          Expanded(child: Text(M.general.share)),
          IconButton(
            tooltip: M.general.close,
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(Icons.close),
          ),
        ],
      ),
      content: SizedBox(
        width: 560,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DropdownButtonFormField<ShareFormat>(
              key: ValueKey(format),
              initialValue: format,
              isExpanded: true,
              decoration: InputDecoration(labelText: M.sharing.format),
              items: [
                for (final value in ShareFormat.values)
                  if (value != ShareFormat.screenshot || widget.allowScreenshot)
                    DropdownMenuItem(value: value, child: Text(label(value))),
              ],
              onChanged: busy ? null : (value) => change(() => format = value!),
            ),
            const SizedBox(height: 8),
            Text(description, style: Theme.of(context).textTheme.bodySmall),
            ExpansionTile(
              key: const PageStorageKey('share-privacy'),
              tilePadding: EdgeInsets.zero,
              title: Text(M.sharing.privacy),
              subtitle: Text(
                hidden.isEmpty ? M.sharing.privacy_hint : hidden.join(' · '),
              ),
              children: [
                checkbox(
                  M.sharing.hide_ids,
                  options.hideIds,
                  (v) => options.hideIds = v,
                ),
                checkbox(
                  M.sharing.hide_mac,
                  options.hideMac,
                  (v) => options.hideMac = v,
                ),
                checkbox(
                  M.sharing.hide_ip,
                  options.hideIp,
                  (v) => options.hideIp = v,
                ),
                checkbox(
                  M.sharing.hide_location,
                  options.hideLocation,
                  (v) => options.hideLocation = v,
                ),
                checkbox(
                  M.sharing.hide_clients,
                  options.hideRouterClients,
                  (v) => options.hideRouterClients = v,
                ),
                Text(
                  M.sharing.credentials_hint,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
            if (format == ShareFormat.inventoryText)
              ExpansionTile(
                key: const PageStorageKey('share-inventory'),
                tilePadding: EdgeInsets.zero,
                initiallyExpanded: true,
                title: Text(M.sharing.inventory_details),
                children: [
                  Text(
                    M.sharing.inventory_hint,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  const SizedBox(height: 10),
                  field(M.sharing.utid, utid),
                  field(M.sharing.kit_number, kit),
                  field(M.sharing.dish_serial, serial),
                  field(M.sharing.account_number, account),
                  if (options.hideIds) Text(M.sharing.inventory_hidden),
                ],
              ),
            if (busy)
              const Padding(
                padding: EdgeInsets.all(16),
                child: Center(child: CircularProgressIndicator()),
              )
            else if (format == ShareFormat.screenshot && image == null)
              OutlinedButton.icon(
                onPressed: prepare,
                icon: const Icon(Icons.preview_outlined),
                label: Text(M.sharing.prepare),
              ),
            if (image != null)
              Image.memory(image!, height: 200)
            else if (payload != null)
              Container(
                height: 180,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  border: Border.all(color: Theme.of(context).dividerColor),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: SingleChildScrollView(
                  child: SelectableText(payload!.text),
                ),
              ),
            if (error != null) ...[
              Text(
                error!,
                style: TextStyle(color: Theme.of(context).colorScheme.error),
              ),
              TextButton(
                onPressed: busy ? null : prepare,
                child: Text(M.sharing.retry),
              ),
            ],
          ],
        ),
      ),
      actions: [
        if (format != ShareFormat.screenshot)
          TextButton(
            onPressed: busy || payload == null ? null : copy,
            child: Text(M.general.to_clipboard),
          ),
        TextButton(
          onPressed: busy || payload == null ? null : save,
          child: Text(M.general.save_as),
        ),
        if (Platform.isAndroid || Platform.isIOS || Platform.isMacOS)
          FilledButton.icon(
            key: shareButtonKey,
            onPressed: busy || payload == null ? null : share,
            icon: const Icon(Icons.share),
            label: Text(M.general.share),
          ),
        if (widget.showInApp && format == ShareFormat.json)
          TextButton(
            onPressed: busy || payload == null ? null : viewInApp,
            child: Text(M.general.view_in_app),
          ),
      ],
    );
  }
}
