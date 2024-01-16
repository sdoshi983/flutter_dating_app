import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dating_app/navigation/routes.dart';
import 'package:flutter_dating_app/utils/utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Constants.appRouter = AppRouter();
    return MaterialApp.router(
      title: 'Dating app',
      theme: AppTheme.getAppThemeData(), // setting up app theme
      routerConfig: Constants.appRouter.config(),
      debugShowCheckedModeBanner: false,
    );
  }
}
