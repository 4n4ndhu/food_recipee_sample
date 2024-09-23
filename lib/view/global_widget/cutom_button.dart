import 'package:flutter/material.dart';
import 'package:food_recipee_sample/utils/constants/color_constants.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final void Function()? onButtonPressed;
  final double? height;
  final double? width;

  const CustomButton({
    required this.text,
    this.onButtonPressed,
    super.key,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onButtonPressed,
      child: Container(
        height: height,
        width: width,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: ColorConstants.primaryColor,
        ),
      ),
    );
  }
}
