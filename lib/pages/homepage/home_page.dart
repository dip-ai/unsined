import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  bool isHovered = false;

  final Gradient gradient = const LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFF1E4189), Color(0xFF267BDC)],
  );
  final Gradient gradient1 = const LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFF2F53BF), Color(0xFF08A5ED)],
  );
  final Gradient gradient2 = const LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFF30cfd0), Color(0xFF330867)],
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(gradient: gradient2),
      child: Column(
        children: [
          const SizedBox(height: 30),
          RichText(
            text: TextSpan(
              children: [
                const TextSpan(
                  text: "Monetize Your Talents Let's Join Forces ",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
                ),
                WidgetSpan(
                  alignment: PlaceholderAlignment.middle,
                  child: Image.asset(
                    "assets/images/rounds.webp",
                    height: 40, // Adjust height as needed
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            "Music Contests:  Where Fun Meets Fame!",
            style: TextStyle(
                fontSize: 25, color: Colors.white, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 30),
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
          const SizedBox(height: 10),
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
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: gradient,
                      ),
                      child: Image.asset(
                        'assets/images/music-circle.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: const Text("* Be the No.1"),
                    )
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: gradient1,
                  ),
                  child: Image.asset(
                    'assets/images/Union.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: gradient1,
                  ),
                  child: Image.asset(
                    'assets/images/star.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 45),
          Image.asset("assets/images/stack.webp"),
        ],
      ),
    );
  }
}
