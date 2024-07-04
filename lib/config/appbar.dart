import 'package:flutter/material.dart';
import 'package:unsined/config/page_route.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF30cfd0), Color(0xFF330867)],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
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
              InkWell(
                onTap: () {
                  Navigator.of(context).push(createRoute());
                },
                child: const Icon(
                  Icons.menu,
                  size: 60,
                  color: Color(0xFFAFB1B7),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
