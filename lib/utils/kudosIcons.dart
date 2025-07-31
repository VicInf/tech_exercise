import 'package:flutter/material.dart';

class KudosIcons extends StatelessWidget {
  final double size;
  final List<Color> colors;
  final List<IconData>? icons;

  const KudosIcons({
    super.key,
    this.size = 28,
    this.colors = const [],
    this.icons,
  });

  @override
  Widget build(BuildContext context) {
    final iconList = icons ?? List.filled(colors.length, Icons.emoji_events);

    return SizedBox(
      width: size,
      height: size,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          for (int i = colors.length - 1; i >= 0; i--)
            Positioned(
              left: i * (size / 1.75),
              child: Container(
                width: size,
                height: size,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.grey[700]!, width: 2),
                  color: Colors.black,
                ),
                child: Icon(iconList[i], color: colors[i], size: size * 0.6),
              ),
            ),
        ],
      ),
    );
  }
}
