import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            children: <Widget>[
              // Logo image
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Image.asset(
                  '../assets/Images/logo.png',
                  width: 200.0,
                ),
              ),
              const SizedBox(
                height: 48.0,
              ),

              // Title
              const Text(
                "Just Do It",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(
                height: 24,
              ),

              // Sub-title
              const Text(
                "Brand new Snickers and custom kicks made with premium quality.",
                textAlign: TextAlign.center,
              ),

              const SizedBox(
                height: 48.0,
              ),

              // Shop now link btn
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/homepage');
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.circular(12)),
                  padding: const EdgeInsets.all(25),
                  child: const Center(
                    child: Text(
                      "Shop Now",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
