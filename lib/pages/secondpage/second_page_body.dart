import 'package:flutter/material.dart';
import 'package:unsined/pages/secondpage/config/animation.dart';
import 'package:unsined/pages/secondpage/config/info.dart';

class SecondPageBody extends StatelessWidget {
  const SecondPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ShaderMask(
          shaderCallback: (bounds) {
            return const LinearGradient(
              colors: [Color(0xFF04EBF8), Color(0xFF025BF5)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ).createShader(Rect.fromLTWH(0, 0, bounds.width, bounds.height));
          },
          child: const Text(
            "Participate to Win",
            style: TextStyle(
                color: Colors.white,
                fontSize:
                    65), // set the text color to white, it will be replaced by the gradient
          ),
        ),
        const SizedBox(height: 30),
        const Text(
          "Distribute your Music to the most popular Platform, including Facebook, Twitter, Youtube with just a simple steps and get a chance to win big prizes!",
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
        const SizedBox(height: 10),
        const Row(
          children: [
            RotationAnimation(),
          ],
        ),
        const SizedBox(height: 30),
        const Information(
          text: 'Desirae Vaccaro',
          color: Color(0xFF85889E),
        ),
        const SizedBox(height: 20),
        const Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: Information(
            text: 'Angel Bator',
            color: Color(0xFFFFFFFF),
          ),
        ),
        const SizedBox(height: 20),
        const Information(
          text: 'Angel Bator',
          color: Color(0xFF85889E),
        ),
        const SizedBox(height: 20),
        const Information(
          text: 'Cheyenne Ekstrom..',
          color: Color(0xFF85889E),
        ),
        const SizedBox(height: 150),
      ],
    );
  }
}
