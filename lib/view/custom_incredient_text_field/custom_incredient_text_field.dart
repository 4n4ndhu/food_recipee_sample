
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_recipee_sample/utils/constants/color_constants.dart';
import 'package:hugeicons/hugeicons.dart';

class customIncredientTextField extends StatelessWidget {
  const customIncredientTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 172,
          height: 44,
          child: TextField(
            decoration: InputDecoration(
              hintText: "Item name",
              hintStyle: TextStyle(
                  color: ColorConstants.lightblack,
                  fontSize: 14,
                  fontWeight: FontWeight.normal),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: ColorConstants.textileborder,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: ColorConstants.textileborder,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 12,
        ),
        SizedBox(
          width: 122,
          height: 44,
          child: TextField(
            decoration: InputDecoration(
              hintText: "Quantity",
              hintStyle: TextStyle(
                  color: ColorConstants.lightblack,
                  fontSize: 14,
                  fontWeight: FontWeight.normal),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: ColorConstants.textileborder,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: ColorConstants.textileborder,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 12,
        ),
        HugeIcon(
          icon: HugeIcons.strokeRoundedRemoveSquare,
          color: Colors.black,
          size: 24,
        )
      ],
    );
  }
}
