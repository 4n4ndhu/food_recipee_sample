
import 'package:flutter/material.dart';
import 'package:food_recipee_sample/utils/constants/color_constants.dart';

class cutomProfileDataWidget extends StatelessWidget {
  const cutomProfileDataWidget({
    super.key,
    required this.title,
    required this.count,
  });
  final String title;
  final String count;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
              color: ColorConstants.neutral,
              fontSize: 12,
              fontWeight: FontWeight.normal),
        ),
        Text(
          count,
          style: TextStyle(
              color: ColorConstants.lightblack,
              fontSize: 20,
              fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}
