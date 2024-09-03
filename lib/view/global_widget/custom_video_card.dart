
import 'package:flutter/material.dart';
import 'package:food_recipee_sample/utils/constants/color_constants.dart';

class CustomVideoCard extends StatelessWidget {
  const CustomVideoCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 280,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.red,
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  "https://images.pexels.com/photos/1640774/pexels-photo-1640774.jpeg?auto=compress&cs=tinysrgb&w=600"))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8, top: 8),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: ColorConstants.lightblack.withOpacity(.3),
                  ),
                  height: 28,
                  width: 58,
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 8, top: 8),
                child: CircleAvatar(),
              )
            ],
          ),
          CircleAvatar(),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 8, bottom: 8),
              child: Container(
                height: 26,
                width: 42,
                color: ColorConstants.lightblack.withOpacity(.3),
              ),
            ),
          )
        ],
      ),
    );
  }
}
