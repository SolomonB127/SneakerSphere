import 'package:flutter/material.dart';
import 'package:sneaker_sphere/Pages/home_page.dart';

import 'Pages/welcome_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const WelcomePage(),
      routes: {
        '/homepage': (context) => const HomePage(),
      },
    );
  }
}
