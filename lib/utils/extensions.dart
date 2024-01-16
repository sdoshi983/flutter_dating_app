import 'package:flutter/cupertino.dart';

// add all the extensions here

extension ContextExtensions on BuildContext {
  // ContextExtensions are the extensions on BuildContext.

  double get screenHeight => MediaQuery.of(this).size.height;

  double get screenWidth => MediaQuery.of(this).size.width;

  EdgeInsets get screenPadding => MediaQuery.of(this).padding;
}
