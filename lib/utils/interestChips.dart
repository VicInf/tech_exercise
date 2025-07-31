import 'package:flutter/material.dart';

Widget interestChip(String emoji, String label) {
  return Chip(
    avatar: Text(emoji, style: const TextStyle(fontSize: 18)),
    label: Text(label, style: TextStyle(color: Colors.white54)),
    backgroundColor: Colors.black,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
  );
}
