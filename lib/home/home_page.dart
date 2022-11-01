import 'package:flutter/material.dart';
import 'package:pawan_sir_portfolio/web_layout/web_homepage.dart';

import '../mobile_layout/mobile_home_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1130) {
        return WebHomePage();
      } else {
        return HomePageMob();
      }
    });
  }
}
