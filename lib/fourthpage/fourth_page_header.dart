import 'package:flutter/material.dart';
import 'package:unsined/pages/welcomepage/appbar.dart';

class FourthPageHeader extends StatelessWidget {
  const FourthPageHeader({super.key});

  final Gradient gradient = const LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFF1E4189), Color(0xFF267BDC)],
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0XFF010523),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const SizedBox(height: 30),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Creating harmony with the help of music",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 35,
                    color: Colors.white),
              ),
            ),
            const SizedBox(height: 40),
            TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[900],
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white30),
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                        Radius.circular(30.0)), // Set high value for full curve
                    borderSide: BorderSide(color: Colors.white30, width: 2.0),
                  ),
                  prefixIcon: const Icon(
                    Icons.mail,
                    color: Colors.white60,
                  ),
                  hintText: "EMAIL ADDRESS",
                  hintStyle: const TextStyle(color: Colors.white70)),
            ),
            const SizedBox(height: 15),
            InkWell(
              onTap: () {
                debugPrint("Get Started");
              },
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    gradient: gradient,
                    borderRadius: const BorderRadius.all(Radius.circular(30))),
                child: const Center(
                  child: Text(
                    "GET STARTED",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 25),
            Image.asset(
              "assets/images/hello.webp",
              height: 500,
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Image.asset(
                    'assets/images/wave.png',
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 15),
                RichText(
                  text: const TextSpan(
                    text: 'unsined',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                    children: <TextSpan>[
                      TextSpan(
                          text: '®',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 12)),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Text(
                  "Listen.",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "Create. ",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
                Text(
                  "Mix",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF6BADFF)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
