import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:water_tracker_app/utils/app_colors.dart';
import 'package:water_tracker_app/utils/app_images.dart';
import 'package:water_tracker_app/utils/app_styles.dart';
import 'package:water_tracker_app/utils/mysize.dart';
import 'package:water_tracker_app/view/HomeScreen/home_screen.dart';
import 'package:water_tracker_app/view/onboardingScreen/onboarding_screen.dart';
import 'package:water_tracker_app/widgets/custom_text.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Delay for 3 seconds and then navigate to the home page
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => OnboardingScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              AppImages.splashBackgroundImage, // Replace with your image asset
              fit: BoxFit.cover,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Use the Align widget to position the RiveAnimation
              Center(
                child: Column(
                  children: [
                    Image.asset(
                      AppImages.splashImage,
                      width: MySize.size180,
                      height: MySize.size180,
                    ),
                    SizedBox(
                      height: MySize.size25,
                    ),
                    CustomText(
                        text: "Drops Water Tracker",
                        textStyle: AppStyles.whitetext700
                            .copyWith(fontSize: MySize.size24)),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: MySize.size80),
                      child: CustomText(
                          text:
                              "Stay hydrated and track your daily water intake",
                          textAlign: TextAlign.center,
                          textStyle: AppStyles.whitetext500
                              .copyWith(fontSize: MySize.size14)),
                    ),
                    SizedBox(
                      height: MySize.size25,
                    ),
                    Lottie.asset(AppImages.splashRiveDotsAnimation,
                        height: MySize.size120

                        // Adjust the fit as needed
                        ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
