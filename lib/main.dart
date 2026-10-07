import 'package:flutter/material.dart';
import 'halaman_menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Flutter Tirtana',
      theme: ThemeData(useMaterial3: true),
      home: const HalamanMenu(),
    );
  }
}