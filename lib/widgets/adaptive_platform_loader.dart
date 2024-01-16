import 'package:flutter/material.dart';
import 'package:flutter_dating_app/utils/utils.dart';

class AdaptivePlatformLoader extends StatelessWidget {
  const AdaptivePlatformLoader({
    super.key,
    this.color,
    this.height,
    this.width,
  });
  final Color? color;
  final double? height;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Center(
        child: CircularProgressIndicator(
          color: color ?? AppTheme.primary,
        ),
      ),
    );
  }
}
