import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:infai_demo_web/app/app_router.dart';
import 'package:infai_demo_web/constants/app_colors.dart';

class InfaiDemoWeb extends StatefulWidget {
  const InfaiDemoWeb({super.key});

  @override
  State<InfaiDemoWeb> createState() => _InfaiDemoWebState();
}

class _InfaiDemoWebState extends State<InfaiDemoWeb> {
  final AppRouter routers = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      scrollBehavior: MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.trackpad,
          PointerDeviceKind.touch,
          PointerDeviceKind.mouse,
        },
      ),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: AppColors.blackColor),
      routeInformationProvider: AppRouter.router.routeInformationProvider,
      routeInformationParser: AppRouter.router.routeInformationParser,
      routerDelegate: AppRouter.router.routerDelegate,
    );
  }
}
