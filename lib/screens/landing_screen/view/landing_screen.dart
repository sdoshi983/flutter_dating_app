import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dating_app/screens/screens.dart';
import 'package:flutter_dating_app/utils/utils.dart';

@RoutePage()
class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: context.screenWidth * 0.08),
              child: Column(
                children: [
                  SizedBox(height: context.screenHeight * 0.08),
                  Align(
                    alignment: Alignment.center,
                    child: Image.asset(imgAppLogo),
                  ),
                  SizedBox(height: context.screenHeight * 0.015),
                  Text(
                    'Over 108,700 matches made.',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  SizedBox(height: context.screenHeight * 0.08),
                  Text(
                    'Meet digital nomads for friends, love, and adventure.',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontWeight: FontWeight.w800,
                          fontSize: 25,
                        ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: context.screenHeight * 0.035),
                  Image.asset(
                    imgRealUsers,
                    scale: 3.5,
                  ),
                ],
              ),
            ),
            const Spacer(),
            Stack(
              children: [
                SizedBox(
                  width: context.screenWidth,
                  height: context.screenHeight * 0.35,
                  child: Image.asset(imgLandingBg, fit: BoxFit.fill),
                ),
                Positioned(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: context.screenWidth * 0.08),
                    child: Column(
                      children: [
                        SizedBox(height: context.screenHeight * 0.01),
                        SignInTypeWidget(
                          text: 'Sign in with Google',
                          textStyle: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                color: AppTheme.grey,
                              ),
                          containerColor: AppTheme.secondary,
                          borderColor: AppTheme.black,
                        ),
                        SizedBox(height: context.screenHeight * 0.01),
                        SignInTypeWidget(
                          text: 'Sign in with Apple',
                          textStyle: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                color: AppTheme.secondary,
                              ),
                          containerColor: AppTheme.black,
                        ),
                        SizedBox(height: context.screenHeight * 0.01),
                        SignInTypeWidget(
                          text: 'Sign in with Email',
                          textStyle: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                color: AppTheme.black,
                              ),
                          containerColor: AppTheme.secondary,
                          borderColor: AppTheme.black,
                        ),
                        SizedBox(height: context.screenHeight * 0.015),
                        RichText(
                          textAlign: TextAlign.left,
                          text: TextSpan(
                              text: 'By tapping ‘Sign in’, you agree to our ',
                              style: Theme.of(context).textTheme.titleSmall!.copyWith(color: AppTheme.secondary),
                              children: [
                                TextSpan(
                                  text: ' Terms',
                                  style: Theme.of(context).textTheme.titleSmall!.copyWith(color: AppTheme.davysGrey),
                                ),
                                TextSpan(
                                  text: '. Learn how we process your data in our',
                                  style: Theme.of(context).textTheme.titleSmall!.copyWith(color: AppTheme.secondary),
                                ),
                                TextSpan(
                                  text: ' Privacy Policy ',
                                  style: Theme.of(context).textTheme.titleSmall!.copyWith(color: AppTheme.secondary),
                                ),
                                TextSpan(
                                  text: 'and',
                                  style: Theme.of(context).textTheme.titleSmall!.copyWith(color: AppTheme.secondary),
                                ),
                                TextSpan(
                                  text: ' Cookies Policy',
                                  style: Theme.of(context).textTheme.titleSmall!.copyWith(color: AppTheme.secondary),
                                ),
                                TextSpan(
                                  text: '.',
                                  style: Theme.of(context).textTheme.titleSmall!.copyWith(color: AppTheme.secondary),
                                ),
                              ]),
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
