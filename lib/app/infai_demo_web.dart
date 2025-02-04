import 'package:flutter/material.dart';
import 'package:infai_demo_web/app/app_router.dart';

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
      debugShowCheckedModeBanner: false,
      routeInformationProvider: AppRouter.router.routeInformationProvider,
      routeInformationParser: AppRouter.router.routeInformationParser,
      routerDelegate: AppRouter.router.routerDelegate,
    );
  }
}
