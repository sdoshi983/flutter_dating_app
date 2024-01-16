import 'package:flutter/material.dart';
import 'package:flutter_dating_app/utils/utils.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    required this.buttonText,
    this.onTap,
    this.buttonColor = AppTheme.primary,
    this.textColor = AppTheme.secondary,
    this.width,
    this.height,
    this.borderRadius,
    this.isLoading = false,
    this.isDisable = false,
  }) : super(key: key);

  final bool isDisable;
  final Color buttonColor;
  final Color textColor;
  final String? buttonText;
  final VoidCallback? onTap;
  final double? width;
  final double? height;
  final double? borderRadius;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isDisable ? null : onTap,
      child: Container(
        width: width ?? double.infinity,
        height: height ?? context.screenHeight * 0.07,
        decoration: BoxDecoration(
          color: isDisable ? AppTheme.grey : buttonColor,
          borderRadius: BorderRadius.circular(borderRadius ?? 12),
        ),
        child: Align(
          child: isLoading
              ? const CircularProgressIndicator(
                  color: AppTheme.secondary,
                )
              : Text(
                  buttonText!,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: textColor,
                        fontSize: 21,
                      ),
                ),
        ),
      ),
    );
  }
}
