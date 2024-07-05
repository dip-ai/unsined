import 'package:flutter/material.dart';
import 'package:unsined/fourthpage/fourth_page.dart';
import 'package:unsined/pages/homepage/home_page.dart';
import 'package:unsined/pages/welcomepage/appbar.dart';
import 'package:unsined/thirdpage/third_page_header.dart';

import '../../thirdpage/thirdpage.dart';
import '../secondpage/second_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
          appBar: PreferredSize(
            preferredSize:
                Size.fromHeight(100.0), // Adjust the height as needed
            child: CustomAppBar(),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                MyHomePage(),
                SecondPage(),
                ThirdPage(),
                FourthPage(),
              ],
            ),
          )),
    );
  }
}
