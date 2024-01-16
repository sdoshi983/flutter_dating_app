import 'package:flutter/material.dart';
import 'package:flutter_dating_app/utils/extensions.dart';

class SignInTypeWidget extends StatelessWidget {
  const SignInTypeWidget({
    super.key,
    this.text,
    this.iconPath,
    this.borderColor,
    this.containerColor,
    this.textStyle,
  });

  final String? text;
  final String? iconPath;
  final Color? borderColor;
  final Color? containerColor;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(96),
        border: borderColor != null
            ? Border.all(
                color: borderColor!,
                width: 2,
              )
            : null,
        color: containerColor,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: context.screenWidth * 0.04,
        vertical: context.screenHeight * 0.015,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text ?? '',
            style: textStyle,
          )
        ],
      ),
    );
  }
}
