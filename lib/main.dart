import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_sphere/Pages/home_page.dart';

import 'Pages/welcome_page.dart';
import 'modules/cart_data.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Cart(),
        builder: (context, child) => MaterialApp(
              debugShowCheckedModeBanner: false,
              home: const WelcomePage(),
              routes: {
                '/homepage': (context) => const HomePage(),
              },
            ));
  }
}
