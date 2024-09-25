import 'package:flutter/material.dart';
import 'package:food_recipee_sample/view/custom_incredient_text_field/custom_incredient_text_field.dart';
import 'package:food_recipee_sample/view/global_widget/cutom_button.dart';
import 'package:food_recipee_sample/view/global_widget/incredient_Card_widget.dart';

import '../../utils/constants/color_constants.dart';

class CreateRecipeScreen extends StatelessWidget {
  const CreateRecipeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Create recipe",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 12,
              ),
              _CreateRecipeSection(),
              _IncredientSection()
            ],
          ),
        ),
      ),
    );
  }

  Padding _IncredientSection() {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Create recipe",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 16,
          ),
          customIncredientTextField(),
          SizedBox(
            height: 16,
          ),
          customIncredientTextField(),
          SizedBox(
            height: 16,
          ),
          customIncredientTextField(),
          SizedBox(
            height: 20,
          ),
          Text(
            "+ Add new Ingredient",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 20,
          ),
          CustomButton(
            text: "Save my recipe",
            height: 54,
            width: double.infinity,
          ),
          SizedBox(
            height: 16,
          )
        ],
      ),
    );
  }

  Column _CreateRecipeSection() {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://images.pexels.com/photos/1639562/pexels-photo-1639562.jpeg?auto=compress&cs=tinysrgb&w=600"),
                      fit: BoxFit.cover)),
              child: Center(
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: ColorConstants.lightblack.withOpacity(.3),
                  child: Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(13),
                child: CircleAvatar(
                  radius: 16,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.edit_outlined,
                    size: 20,
                    color: ColorConstants.primaryColor,
                  ),
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 44,
          child: TextField(
            decoration: InputDecoration(
              hintText: "Bento lunch box ideas for work",
              hintStyle: TextStyle(
                  color: ColorConstants.lightblack,
                  fontSize: 14,
                  fontWeight: FontWeight.normal),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: ColorConstants.primaryColor,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: ColorConstants.primaryColor,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 16,
        ),
        IncredientCardWidget(
            haveArrow: true,
            incredientImage: "",
            incredientName: "serves",
            incredientQuantity: "01"),
        SizedBox(
          height: 12,
        ),
        IncredientCardWidget(
            haveArrow: true,
            incredientImage: "",
            incredientName: "Cook time",
            incredientQuantity: "45 min"),
      ],
    );
  }
}
