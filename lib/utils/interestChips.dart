import 'package:flutter/material.dart';

Widget interestChip(IconData icon, String label) {
  return Chip(
    avatar: Icon(icon, color: Colors.white, size: 18),
    label: Text(label, style: const TextStyle(color: Colors.white)),
    backgroundColor: Colors.grey[850],
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  );
}
