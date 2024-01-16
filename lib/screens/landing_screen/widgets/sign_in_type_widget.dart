import 'package:flutter/material.dart';
import 'package:flutter_dating_app/utils/utils.dart';

class SignInTypeWidget extends StatelessWidget {
  const SignInTypeWidget({
    super.key,
    this.text,
    this.iconPath,
    this.borderColor,
    this.containerColor,
    this.textStyle,
    this.onTap,
  });

  final String? text;
  final String? iconPath;
  final Color? borderColor;
  final Color? containerColor;
  final TextStyle? textStyle;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(96),
          border: borderColor != null
              ? Border.all(
                  color: borderColor!,
                  width: 2,
                )
              : null,
          color: containerColor ?? AppTheme.secondary,
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
      ),
    );
  }
}
