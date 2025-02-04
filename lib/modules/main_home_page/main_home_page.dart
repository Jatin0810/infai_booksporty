import 'package:flutter/material.dart';
import 'package:infai_demo_web/modules/home/home_screen.dart';
import 'package:infai_demo_web/widget/appbars/home_app_bar.dart';

class MainHomePage extends StatefulWidget {
  const MainHomePage({super.key});

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HomeAppBar(
            onTap: () {},
          ),
          Expanded(child: HomeScreen())
        ],
      ),
    );
  }
}
