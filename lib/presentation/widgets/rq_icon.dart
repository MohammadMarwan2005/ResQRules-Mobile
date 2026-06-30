import 'package:flutter/widgets.dart';

/// Thin Lucide icon wrapper: default size 20, inherits `currentColor` so it
/// recolours cleanly (white on the red panel, tinted inline).
class RqIcon extends StatelessWidget {
  const RqIcon(this.icon, {this.size = 20, this.color, super.key});

  final IconData icon;
  final double size;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: size,
      color: color ?? DefaultTextStyle.of(context).style.color,
    );
  }
}
