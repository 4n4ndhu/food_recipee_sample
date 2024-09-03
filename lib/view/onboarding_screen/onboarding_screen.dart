import 'package:flutter/material.dart';
import 'package:food_recipee_sample/utils/constants/color_constants.dart';
import 'package:food_recipee_sample/utils/constants/image_constants.dart';
import 'package:food_recipee_sample/view/bottom_nav_bar_screen/bottom_navbar_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            _buildBackgroundImage(),
            _buildGradientSection(context),
            Positioned(
              top: 13,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.white,
                    size: 16,
                  ),
                  SizedBox(width: 10),
                  RichText(
                      text: TextSpan(
                          text: "60K+",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                          children: [
                        TextSpan(
                            text: " premium recipes",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 16))
                      ]))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildGradientSection(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 0,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 64, vertical: 60),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.transparent, Colors.black],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "Let's cooking",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 56),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Find best recipes for cooking",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.normal),
            ),
            SizedBox(
              height: 40,
            ),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BottomNavbarScreen(),
                    ));
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: ColorConstants.primaryColor,
                ),
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Start Cooking",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(width: 10),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildBackgroundImage() {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(ImageConstants.ONBOARDING_SCREEN_BG))),
    );
  }
}
