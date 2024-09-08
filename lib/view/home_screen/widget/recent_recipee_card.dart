


import 'package:flutter/material.dart';
import 'package:food_recipee_sample/utils/constants/color_constants.dart';

class RecentRecipeWidget extends StatelessWidget {
  const RecentRecipeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 124,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://images.pexels.com/photos/769969/pexels-photo-769969.jpeg?auto=compress&cs=tinysrgb&w=600")),
              borderRadius: BorderRadius.circular(15),
              color: Colors.red,
            ),
            height: 124,
            width: 124,
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "Indonesian chicken burger",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            "By Adrianna Curl",
            style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.normal,
                color: ColorConstants.neutral),
          )
        ],
      ),
    );
  }
}
