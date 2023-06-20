import 'package:flutter/material.dart';
import 'package:profile_app/profile_screen.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp
({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:ProfileScreen()
    );
  }
}