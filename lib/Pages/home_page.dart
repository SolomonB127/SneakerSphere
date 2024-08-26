import 'package:flutter/material.dart';
import 'package:sneaker_sphere/Components/bottom_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      bottomNavigationBar: const BottomBar(),
    );
  }
}
