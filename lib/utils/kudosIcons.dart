import 'package:flutter/material.dart';

class KudosIcons extends StatelessWidget {
  final double size;
  final List<Color> colors;

  const KudosIcons({super.key, this.size = 28, this.colors = const []});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size * 2.2,
      height: size,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          for (int i = colors.length - 1; i >= 0; i--)
            Positioned(
              left: i * (size / 2),
              child: Container(
                width: size,
                height: size,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.grey[700]!, width: 2),
                  color: Colors.black,
                ),
                child: Icon(
                  Icons.emoji_events,
                  color: colors[i],
                  size: size * 0.57,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
