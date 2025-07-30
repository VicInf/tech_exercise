import 'package:flutter/material.dart';

class FieldsScreen extends StatelessWidget {
  const FieldsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(title: const Text('Fields Screen')),
        body: const Center(child: Text('Hello World')),
      ),
    );
  }
}
