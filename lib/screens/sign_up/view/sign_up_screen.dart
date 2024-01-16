import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dating_app/utils/utils.dart';
import 'package:flutter_dating_app/widgets/widgets.dart';

@RoutePage()
class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: context.screenWidth * 0.05,
            vertical: context.screenHeight * 0.02,
          ),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Basics',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.w800,
                        fontSize: 26,
                      ),
                ),
                SizedBox(height: context.screenHeight * 0.02),
                const PrimaryTextField(
                  labelText: 'First name',
                ),
                SizedBox(height: context.screenHeight * 0.025),
                const PrimaryTextField(
                  labelText: 'Profile type',
                ),
                SizedBox(height: context.screenHeight * 0.025),
                const PrimaryTextField(
                  labelText: 'Mobility',
                ),
                SizedBox(height: context.screenHeight * 0.025),
                const PrimaryTextField(
                  labelText: 'Age',
                  textInputType: TextInputType.number,
                ),
                SizedBox(height: context.screenHeight * 0.07),
                Text(
                  'Story time',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.w800,
                        fontSize: 26,
                      ),
                ),
                SizedBox(height: context.screenHeight * 0.02),
                const PrimaryTextField(
                  hintText: 'Most adventurous experience (e.g. I saw the northern lights and went husky sledding in Lapland!)',
                  maxLines: 5,
                  borderRadius: 16,
                ),
                SizedBox(height: context.screenHeight * 0.12),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: Container(
        color: AppTheme.secondary,
        padding: EdgeInsets.symmetric(
          horizontal: context.screenWidth * 0.05,
          vertical: context.screenHeight * 0.02,
        ),
        child: const PrimaryButton(
          buttonText: 'Continue',
          borderRadius: 7,
        ),
      ),
    );
  }
}
