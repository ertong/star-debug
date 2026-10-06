const String kDefaultDishIp = '192.168.100.1';
const String kDefaultRouterIp = '192.168.1.1';

bool isValidIpv4Address(String value) {
  if (!RegExp(r'^[0-9]{1,3}(\.[0-9]{1,3}){3}$').hasMatch(value)) {
    return false;
  }
  return value.split('.').every((part) => int.parse(part) <= 255);
}

/// Null represents the default, including unusable values from older installs.
String? normalizeIpv4Override(String? value, String defaultIp) {
  final trimmed = value?.trim();
  if (trimmed == null || !isValidIpv4Address(trimmed)) return null;
  final address = trimmed.split('.').map(int.parse).join('.');
  return address == defaultIp ? null : address;
}
