import 'package:flutter/material.dart';

class AppSurface extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry? padding;
  final VoidCallback? onTap;

  const AppSurface({
    super.key,
    required this.child,
    this.margin = EdgeInsets.zero,
    this.padding,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final cardTheme = theme.cardTheme;
    final shape =
        cardTheme.shape ??
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(14));

    Widget content = padding == null
        ? child
        : Padding(padding: padding!, child: child);
    if (onTap != null) {
      content = InkWell(onTap: onTap, child: content);
    }

    return Padding(
      padding: margin,
      child: Material(
        color: cardTheme.color ?? theme.colorScheme.surface,
        elevation: cardTheme.elevation ?? 0,
        shape: shape,
        clipBehavior: cardTheme.clipBehavior ?? Clip.antiAlias,
        child: content,
      ),
    );
  }
}
