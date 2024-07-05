import 'package:flutter/material.dart';

class SecondPageHeader extends StatelessWidget {
  const SecondPageHeader({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            const Row(
              children: [
                Text(
                  "873K",
                  style: TextStyle(
                      fontSize: 50,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const Text(
              "Active Creators and Participants",
              style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 15),
            const Divider(thickness: 2.5),
            const SizedBox(height: 25),
            const Text(
              "The number of active podcasts and their quality is constantly growing.",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 40),
            Row(
              children: [
                Container(
                  // padding: const EdgeInsets.all(20),
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    'assets/images/man.jfif',
                    width: 70,
                    height: 70,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  // padding: const EdgeInsets.all(20),
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    'assets/images/man.jfif',
                    width: 70,
                    height: 70,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                  width: 70,
                  height: 70,
                  child: const Icon(Icons.add),
                ),
                const SizedBox(width: 30),
                const SizedBox(
                  width: 100,
                  child: Column(
                    children: [
                      Text(
                        "Join Them ",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Divider(
                        color: Colors.white,
                        thickness: 2.5,
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 70),
            Image.asset(
              'assets/images/person.webp',
              fit: BoxFit.cover,
            ),
          ],
        ),
        const Divider(
          thickness: 2.5,
          height: 0,
        ),
      ],
    );
  }
}
