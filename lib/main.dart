import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:tranting_travel_ui/Screen/view/welcome_page/welcom_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScreenWelcome(),
    );
  }
}
