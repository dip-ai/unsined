import 'package:flutter/material.dart';
import 'package:unsined/pages/secondpage/second_page_body.dart';
import 'package:unsined/pages/secondpage/second_page_header.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});
  final Gradient gradient = const LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFF000724), Color(0xFF0A198D)],
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: gradient,
      ),
      child: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            SecondPageHeader(),
            SizedBox(height: 30),
            SecondPageBody(),
          ],
        ),
      ),
    );
  }
}
