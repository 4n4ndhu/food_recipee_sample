import 'package:flutter/material.dart';

import 'package:food_recipee_sample/utils/constants/color_constants.dart';

class IncredientCardWidget extends StatelessWidget {
  String incredientImage;
  String incredientName;
  String incredientQuantity;

  IncredientCardWidget({
    super.key,
    required this.incredientImage,
    required this.incredientName,
    required this.incredientQuantity,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
          color: ColorConstants.neutral.withOpacity(.4),
          borderRadius: BorderRadius.circular(15)),
      height: 76,
      width: double.infinity,
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                      incredientImage,
                    ),
                    fit: BoxFit.cover),
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)),
            height: 52,
            width: 52,
          ),
          SizedBox(width: 16),
          Text(
            incredientName,
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
          ),
          Spacer(),
          Text(incredientQuantity,
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 14,
                  color: ColorConstants.neutral))
        ],
      ),
    );
  }
}
