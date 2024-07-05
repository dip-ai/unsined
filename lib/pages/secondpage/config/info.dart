import 'package:flutter/material.dart';

class Information extends StatelessWidget {
  final String text;
  final Color color;
  const Information({super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 60,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(color: Colors.white)),
                child: const Center(
                  child: Text(
                    "01/",
                    style: TextStyle(
                        fontSize: 19.11,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                ),
              ),
              Container(
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  'assets/images/man.jfif',
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
              ),
              Stack(
                alignment: Alignment.topRight,
                children: [
                  Text(
                    text,
                    maxLines: 1,
                    style: TextStyle(
                        color: color,
                        fontWeight: FontWeight.w400,
                        fontSize: 27.95),
                  ),
                  RotationTransition(
                    turns: const AlwaysStoppedAnimation(35 / 360),
                    child: Container(
                      width: 60,
                      height: 40,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: const Color(0xFF4175FF)),
                      child: const Center(
                        child: Text(
                          "win",
                          style: TextStyle(
                              fontSize: 17.11,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Container(
                width: 30,
                height: 20,
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.white),
                child: const Center(
                    child: Text("\$",
                        style: TextStyle(
                            color: Color(0xFF020445),
                            fontWeight: FontWeight.w600,
                            fontSize: 15))),
              ),
              const SizedBox(width: 10),
              const Text(
                "\$15,000",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 25),
              ),
              const SizedBox(width: 20),
              const Text(
                "2 wins",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 25),
              ),
            ],
          ),
          const SizedBox(height: 20),
          const Divider(
            thickness: 2.5,
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
