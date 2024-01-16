import 'package:flutter/material.dart';
import 'package:flutter_dating_app/utils/utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Dating app',
      theme: AppTheme.getAppThemeData(), // setting up app theme
      routerConfig: Constants.appRouter.config(),
      debugShowCheckedModeBanner: false,
    );
  }
}
