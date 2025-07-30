import 'package:flutter/material.dart';

Widget infoRow(IconData icon, List<InlineSpan> spans) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 10),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(icon, color: Colors.white, size: 28),
        const SizedBox(width: 10),
        Expanded(
          child: RichText(text: TextSpan(children: spans)),
        ),
      ],
    ),
  );
}
