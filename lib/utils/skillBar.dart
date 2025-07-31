import 'package:flutter/material.dart';

Widget skillBar(String label, int value, int max) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: const TextStyle(color: Colors.white, fontSize: 16),
          ),
          Text(
            '$value/$max',
            style: const TextStyle(color: Colors.white70, fontSize: 16),
          ),
        ],
      ),
      const SizedBox(height: 10),
      ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: LinearProgressIndicator(
          value: value / max,
          minHeight: 4,
          backgroundColor: Colors.grey[700],
          valueColor: AlwaysStoppedAnimation<Color>(Colors.yellow[700]!),
        ),
      ),
    ],
  );
}
