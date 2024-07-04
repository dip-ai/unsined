import 'dart:ui';

import 'package:flutter/material.dart';

Route createRoute() {
  return PageRouteBuilder(
    opaque: false,
    pageBuilder: (context, animation, secondaryAnimation) =>
        const BlurredMenuPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1.0, 0.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      final tween =
          Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
      final offsetAnimation = animation.drive(tween);

      return Stack(
        children: [
          BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 5.0,
              sigmaY: 5.0,
            ),
            child: Container(
              color: Colors.black.withOpacity(0.5),
            ),
          ),
          SlideTransition(
            position: offsetAnimation,
            child: child,
          ),
        ],
      );
    },
  );
}

class BlurredMenuPage extends StatelessWidget {
  const BlurredMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Icon(Icons.close, color: Colors.white, size: 50)),
          ),
        ],
      ),
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(35.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {},
                child: const Text(
                  "LOGIN",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const Divider(
                thickness: 2.0,
              ),
              const SizedBox(height: 10),
              InkWell(
                onTap: () {
                  debugPrint('Signed In Tapped');
                },
                child: Container(
                  width: 120,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(color: const Color(0xFF3959AD)),
                    color: const Color(0xFF5870B2),
                  ),
                  child: const Center(
                    child: Text(
                      "SIGNUP",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
