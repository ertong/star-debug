import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:star_debug/controller/conn/connection_error_log.dart';
import 'package:star_debug/widgets/app_surface.dart';

/// Device details followed by a log that uses the remaining viewport space.
class ConnectionErrorLogLayout extends StatelessWidget {
  final List<Widget> children;
  final List<ConnectionFailure> entries;
  final ScrollController? controller;

  const ConnectionErrorLogLayout({
    super.key,
    required this.children,
    required this.entries,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: controller,
      slivers: [
        SliverList.list(children: children),
        if (entries.isNotEmpty)
          SliverLayoutBuilder(
            builder: (context, constraints) => SliverToBoxAdapter(
              child: SizedBox(
                height: math.max(
                  180,
                  constraints.viewportMainAxisExtent -
                      constraints.precedingScrollExtent,
                ),
                child: ConnectionErrorLogView(entries: entries),
              ),
            ),
          ),
      ],
    );
  }
}

class ConnectionErrorLogView extends StatelessWidget {
  final List<ConnectionFailure> entries;

  const ConnectionErrorLogView({super.key, required this.entries});

  @override
  Widget build(BuildContext context) {
    if (entries.isEmpty) return const SizedBox.shrink();
    final theme = Theme.of(context);
    return AppSurface(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(10),
      child: ListView.builder(
        primary: false,
        itemCount: entries.length,
        itemBuilder: (context, index) {
          final entry = entries[index];
          final time = entry.time.toLocal();
          final label = [
            time.hour,
            time.minute,
            time.second,
          ].map((value) => value.toString().padLeft(2, '0')).join(':');
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 3),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    entry.message,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.error,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
