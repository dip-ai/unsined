import 'package:flutter/material.dart';

class ThirdPageBody extends StatelessWidget {
  const ThirdPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      color: Color(0xFF011836),
      child: Column(
        children: [
          const Text(
            "E l e v a t e y o u r m u s i c c a r e e r w i t h u s ",
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.w400, color: Colors.white),
          ),
          const SizedBox(height: 50),
          Stack(
            // alignment: Alignment.centerRight,
            children: [
              Image.asset("assets/images/musichome.webp"),
              const SizedBox(height: 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset("assets/images/static.png"),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [Image.asset("assets/images/music.png")],
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
