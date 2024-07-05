import 'package:flutter/material.dart';

class ThirdPageHeader extends StatelessWidget {
  const ThirdPageHeader({super.key});
  final Gradient gradient = const LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFF0133E5), Color(0xFF3563DF)],
  );

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          gradient: gradient,
        ),
        child: Column(
          children: [
            const Divider(thickness: 2.0),
            const SizedBox(height: 20),
            Row(
              children: [
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Image.asset(
                      'assets/images/audio.webp',
                      fit: BoxFit.cover,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        'assets/images/arrow.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 20),
                Text(
                  "Join for free",
                  style: TextStyle(
                      fontSize: 19.55,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              "Create and Win Prizes with your music",
              style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
            SizedBox(height: 40),
            Text(
              "Distribute your Music to the most popular Platform, including Facebook, Twitter, Youtube with just a simple steps and get a chance to win big prizes!",
              style: TextStyle(
                  fontSize: 19.81,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
            const SizedBox(height: 30),
            Row(
              children: [
                Column(
                  children: [
                    Container(
                        width: 150,
                        height: 66,
                        padding: const EdgeInsets.all(20),
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.white,
                        ),
                        child: const Text(
                          "Get Started →",
                          style: TextStyle(
                              fontSize: 16.13,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF010F58)),
                        )),
                    const SizedBox(height: 10),
                    Container(
                      width: 200,
                      height: 60,
                      padding: const EdgeInsets.all(20),
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Color(0xFFFFFFFF),
                      ),
                      child: const Text(
                        "Create Your Music",
                        style: TextStyle(
                            fontSize: 16.13,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF010F58)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              children: [
                const Text(
                  "Scroll Down",
                  style: TextStyle(
                      fontSize: 14.55,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
                const SizedBox(width: 25),
                Container(
                  padding: const EdgeInsets.all(10),
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: const Center(
                    child: Text(
                      "↓",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF010F58)),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 80),
          ],
        ));
  }
}
