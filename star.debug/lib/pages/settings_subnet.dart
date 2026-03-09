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
  bool _customRouterMode = false;

  @override
  void initState() {
    super.initState();

    final savedRouterIp = R.prefs.data.routerIp ?? kDefaultRouterIp;
    final savedDishIp = R.prefs.data.dishIp ?? kDefaultDishIp;

    // Check if the saved router IP matches any preset subnet gateway
    final matchesPreset = kStarlinkSubnets
        .any((s) => _gatewayFromSubnet(s) == savedRouterIp);
    _customRouterMode = !matchesPreset && savedRouterIp != kDefaultRouterIp;

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

  String? _currentSubnet() {
    final routerIp = R.prefs.data.routerIp ?? kDefaultRouterIp;
    for (var s in kStarlinkSubnets) {
      if (_gatewayFromSubnet(s) == routerIp) return s;
    }
    return null; // means custom
  }

  void _onSubnetSelected(String? value) async {
    if (value == null) return;

    if (value == '__custom__') {
      setState(() { _customRouterMode = true; });
      return;
    }

    setState(() { _customRouterMode = false; });
    final ip = _gatewayFromSubnet(value);
    await R.prefs.save((p) => p.routerIp = ip == kDefaultRouterIp ? null : ip);
    _forceReconnect();
  }

  void _onCustomRouterSubmit(String value) async {
    final ip = value.trim();
    if (ip.isEmpty) {
      // Reset to default
      await R.prefs.save((p) => p.routerIp = null);
      _forceReconnect();
      return;
    }
    if (!_isValidIpv4(ip)) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Invalid IPv4 address: $ip')),
      );
      return;
    }
    await R.prefs.save((p) => p.routerIp = ip == kDefaultRouterIp ? null : ip);
    _forceReconnect();
  }

  void _onDishIpSubmit(String value) async {
    final ip = value.trim();
    if (ip.isEmpty) {
      await R.prefs.save((p) => p.dishIp = null);
      _forceReconnect();
      return;
    }
    if (!_isValidIpv4(ip)) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Invalid IPv4 address: $ip')),
      );
      return;
    }
    await R.prefs.save((p) => p.dishIp = ip == kDefaultDishIp ? null : ip);
    _forceReconnect();
  }

  /// Close existing connections so they are re-created with the new IPs
  /// on the next tick cycle.
  void _forceReconnect() {
    R.routerHolder.conn?.close();
    R.dishHolder.conn?.close();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final currentSubnet = _currentSubnet();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        // Section header
        Container(
          padding: EdgeInsets.fromLTRB(3, 3, 3, 3),
          color: theme.secondaryHeaderColor,
          child: Row(children: [ Text('Starlink Network') ]),
        ),

        SizedBox(height: 8),

        // Router subnet dropdown
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Router Subnet', style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 4),
              DropdownButton<String>(
                isExpanded: true,
                value: _customRouterMode ? '__custom__' : (currentSubnet ?? kStarlinkSubnets.first),
                items: [
                  ...kStarlinkSubnets.map((s) => DropdownMenuItem(
                    value: s,
                    child: Text(s),
                  )),
                  DropdownMenuItem(
                    value: '__custom__',
                    child: Text('Custom…'),
                  ),
                ],
                onChanged: _onSubnetSelected,
              ),

              if (_customRouterMode) ...[
                SizedBox(height: 4),
                TextField(
                  controller: _customRouterCtrl,
                  decoration: InputDecoration(
                    labelText: 'Custom Router IP',
                    hintText: kDefaultRouterIp,
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                  textInputAction: TextInputAction.done,
                  onSubmitted: _onCustomRouterSubmit,
                ),
                SizedBox(height: 4),
                ElevatedButton(
                  onPressed: () => _onCustomRouterSubmit(_customRouterCtrl.text),
                  child: Text('Apply'),
                ),
              ],
            ],
          ),
        ),

        SizedBox(height: 8),

        // Dish IP (advanced)
        ExpansionTile(
          title: Text('Advanced'),
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Dish (Dishy) IP',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  TextField(
                    controller: _dishCtrl,
                    decoration: InputDecoration(
                      labelText: 'Dish IP',
                      hintText: kDefaultDishIp,
                      helperText: 'Leave blank to use default ($kDefaultDishIp)',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.numberWithOptions(decimal: true),
                    textInputAction: TextInputAction.done,
                    onSubmitted: _onDishIpSubmit,
                  ),
                  SizedBox(height: 4),
                  ElevatedButton(
                    onPressed: () => _onDishIpSubmit(_dishCtrl.text),
                    child: Text('Apply'),
                  ),
                ],
              ),
            ),
          ],
        ),

        SizedBox(height: 8),
      ],
    );
  }
}
