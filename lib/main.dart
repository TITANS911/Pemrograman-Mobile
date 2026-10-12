import 'package:flutter/material.dart';
import 'package:pertemuan3/pages/halaman_home.dart';
import 'package:pertemuan3/pages/halaman_profile.dart';
import 'package:pertemuan3/pages/halaman_menu.dart';
import 'package:pertemuan3/widgets/navbar.dart';

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
      debugShowCheckedModeBanner: false,
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedIndex = 0;
  final List<Widget> pages = [
    HalamanHome(),
    Profile(),
    HalamanMenu(),
  ];

  void pindahHalaman(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: Navbar(
        selectedIndex: selectedIndex,
        onTap: pindahHalaman,
      ),
    );
  }
}