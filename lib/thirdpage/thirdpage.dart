import 'package:flutter/material.dart';
import 'package:unsined/thirdpage/third_page_body.dart';
import 'package:unsined/thirdpage/third_page_header.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ThirdPageHeader(),
        ThirdPageBody(),
      ],
    );
  }
}
