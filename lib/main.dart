import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:tech_exercise/presentation/screens/main/main_screen.dart';
import 'package:tech_exercise/provider/main_screen_state_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return ChangeNotifierProvider(
      create: (_) => MainScreenStateProvider(),
      child: MaterialApp(title: 'Tech Exercise', home: const MainScreen()),
    );
  }
}
