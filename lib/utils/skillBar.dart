import 'package:flutter/material.dart';

Widget skillBar(String label, int value, int max) {
  return Row(
    children: [
      SizedBox(
        width: 80,
        child: Text(
          label,
          style: const TextStyle(color: Colors.white, fontSize: 14),
        ),
      ),
      Expanded(
        child: LinearProgressIndicator(
          value: value / max,
          minHeight: 8,
          backgroundColor: Colors.grey[700],
          valueColor: AlwaysStoppedAnimation<Color>(Colors.yellow[700]!),
        ),
      ),
      const SizedBox(width: 10),
      Text(
        '$value/$max',
        style: const TextStyle(color: Colors.white70, fontSize: 13),
      ),
    ],
  );
}
