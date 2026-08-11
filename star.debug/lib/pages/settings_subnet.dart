import 'package:flutter/material.dart';
import 'package:star_debug/controller/conn/dish_connection.dart';
import 'package:star_debug/controller/conn/router_connection.dart';
import 'package:star_debug/preloaded.dart';

/// All known Starlink subnets.
/// The gateway IP (before /) is used as the router IP.
const List<String> kStarlinkSubnets = [
  '192.168.1.1/24',
  '192.168.2.1/24',
  '192.168.3.1/24',
  '192.168.4.1/24',
  '10.0.0.1/16',
  '10.1.0.1/16',
  '10.2.0.1/16',
  '10.3.0.1/16',
];

String _gatewayFromSubnet(String subnet) => subnet.split('/').first;

const String _customSubnet = '__custom__';

bool _isValidIpv4(String value) {
  final parts = value.split('.');
  if (parts.length != 4) return false;
  for (var p in parts) {
    final n = int.tryParse(p);
    if (n == null || n < 0 || n > 255) return false;
  }
  return true;
}

class SubnetSettingsSection extends StatefulWidget {
  const SubnetSettingsSection({super.key});

  @override
  State<SubnetSettingsSection> createState() => _SubnetSettingsSectionState();
}

class _SubnetSettingsSectionState extends State<SubnetSettingsSection> {
  late TextEditingController _customRouterCtrl;
  late TextEditingController _dishCtrl;
  late String _selectedSubnet;
  late String _routerIp;
  late String _dishIp;

  bool _customRouterMode = false;
  String? _routerError;
  String? _dishError;

  @override
  void initState() {
    super.initState();

    final savedRouterIp = R.prefs.data.routerIp ?? kDefaultRouterIp;
    final savedDishIp = R.prefs.data.dishIp ?? kDefaultDishIp;

    // Check if the saved router IP matches any preset subnet gateway
    final matchesPreset = kStarlinkSubnets.any(
      (s) => _gatewayFromSubnet(s) == savedRouterIp,
    );
    _customRouterMode = !matchesPreset && savedRouterIp != kDefaultRouterIp;
    _selectedSubnet = _customRouterMode
        ? _customSubnet
        : kStarlinkSubnets.firstWhere(
            (s) => _gatewayFromSubnet(s) == savedRouterIp,
            orElse: () => kStarlinkSubnets.first,
          );
    _routerIp = savedRouterIp;
    _dishIp = savedDishIp;

    _customRouterCtrl = TextEditingController(
      text: _customRouterMode ? savedRouterIp : '',
    );
    _dishCtrl = TextEditingController(
      text: savedDishIp == kDefaultDishIp ? '' : savedDishIp,
    );
  }

  @override
  void dispose() {
    _customRouterCtrl.dispose();
    _dishCtrl.dispose();
    super.dispose();
  }

  Future<void> _onSubnetSelected(String? value) async {
    if (value == null) return;

    if (value == _customSubnet) {
      setState(() {
        _selectedSubnet = value;
        _customRouterMode = true;
        _routerError = null;
      });
      return;
    }

    final ip = _gatewayFromSubnet(value);
    setState(() {
      _selectedSubnet = value;
      _customRouterMode = false;
      _routerIp = ip;
      _routerError = null;
    });
    await R.prefs.save((p) => p.routerIp = ip == kDefaultRouterIp ? null : ip);
    _forceReconnect();
  }

  Future<void> _onCustomRouterSubmit(String value) async {
    final ip = value.trim();
    if (ip.isNotEmpty && !_isValidIpv4(ip)) {
      setState(() => _routerError = 'Enter a valid IPv4 address');
      return;
    }

    await R.prefs.save((p) => p.routerIp = ip == kDefaultRouterIp ? null : ip);
    _forceReconnect();
    if (!mounted) return;

    setState(() {
      _routerError = null;
      _routerIp = ip.isEmpty ? kDefaultRouterIp : ip;
      if (ip.isEmpty) {
        _selectedSubnet = kStarlinkSubnets.first;
        _customRouterMode = false;
      }
    });
  }

  Future<void> _onDishIpSubmit(String value) async {
    final ip = value.trim();
    if (ip.isNotEmpty && !_isValidIpv4(ip)) {
      setState(() => _dishError = 'Enter a valid IPv4 address');
      return;
    }

    await R.prefs.save((p) => p.dishIp = ip == kDefaultDishIp ? null : ip);
    _forceReconnect();
    if (!mounted) return;

    setState(() {
      _dishError = null;
      _dishIp = ip.isEmpty ? kDefaultDishIp : ip;
    });
  }

  /// Close existing connections so they are re-created with the new IPs
  /// on the next tick cycle.
  void _forceReconnect() {
    R.routerHolder.conn?.close();
    R.dishHolder.conn?.close();
  }

  @override
  Widget build(BuildContext context) {
    const fieldPadding = EdgeInsets.symmetric(horizontal: 12, vertical: 10);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ListTile(
          dense: true,
          visualDensity: VisualDensity.compact,
          leading: Icon(Icons.lan_outlined),
          title: Text('Starlink Network'),
          subtitle: Text('Router $_routerIp  •  Dish $_dishIp'),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(16, 0, 16, 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  SizedBox(width: 72, child: Text('Router')),
                  Expanded(
                    child: DropdownButtonFormField<String>(
                      key: ValueKey(_selectedSubnet),
                      isExpanded: true,
                      initialValue: _selectedSubnet,
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: fieldPadding,
                        border: OutlineInputBorder(),
                      ),
                      items: [
                        ...kStarlinkSubnets.map(
                          (s) => DropdownMenuItem(value: s, child: Text(s)),
                        ),
                        DropdownMenuItem(
                          value: _customSubnet,
                          child: Text('Custom…'),
                        ),
                      ],
                      onChanged: _onSubnetSelected,
                    ),
                  ),
                ],
              ),
              if (_customRouterMode) ...[
                SizedBox(height: 8),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(width: 72, child: Text('Router IP')),
                    Expanded(
                      child: TextField(
                        controller: _customRouterCtrl,
                        decoration: InputDecoration(
                          isDense: true,
                          hintText: kDefaultRouterIp,
                          errorText: _routerError,
                          contentPadding: fieldPadding,
                          suffixIcon: _applyButton(
                            tooltip: 'Apply router IP',
                            onPressed: () =>
                                _onCustomRouterSubmit(_customRouterCtrl.text),
                          ),
                          border: OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.numberWithOptions(
                          decimal: true,
                        ),
                        textInputAction: TextInputAction.done,
                        onSubmitted: _onCustomRouterSubmit,
                      ),
                    ),
                  ],
                ),
              ],
              SizedBox(height: 8),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: 72, child: Text('Dish IP')),
                  Expanded(
                    child: TextField(
                      controller: _dishCtrl,
                      decoration: InputDecoration(
                        isDense: true,
                        hintText: kDefaultDishIp,
                        errorText: _dishError,
                        contentPadding: fieldPadding,
                        suffixIcon: _applyButton(
                          tooltip: 'Apply Dish IP',
                          onPressed: () => _onDishIpSubmit(_dishCtrl.text),
                        ),
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.numberWithOptions(
                        decimal: true,
                      ),
                      textInputAction: TextInputAction.done,
                      onSubmitted: _onDishIpSubmit,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Divider(height: 1),
      ],
    );
  }

  Widget _applyButton({
    required String tooltip,
    required VoidCallback onPressed,
  }) {
    return IconButton(
      tooltip: tooltip,
      visualDensity: VisualDensity.compact,
      icon: Icon(Icons.check),
      onPressed: onPressed,
    );
  }
}
