import 'package:flutter/cupertino.dart';

extension ContextExtensions on BuildContext {
  double get screenHeight => MediaQuery.of(this).size.height;

  double get screenWidth => MediaQuery.of(this).size.width;

  EdgeInsets get screenPadding => MediaQuery.of(this).padding;
}
