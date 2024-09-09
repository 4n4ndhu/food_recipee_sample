import 'package:flutter/material.dart';
import 'package:food_recipee_sample/dummyDb.dart';
import 'package:food_recipee_sample/utils/constants/color_constants.dart';
import 'package:food_recipee_sample/view/global_widget/incredient_Card_widget.dart';
import 'package:food_recipee_sample/view/recipe_details_screen/widget/recipe_detail_widget.dart';

class RecipeDetailsScreen extends StatelessWidget {
  String recipeTitle;
  String recipeImage;
  String creatorImage;
  String creatorName;
  String recipeRating;
  String creatorLocation;

  RecipeDetailsScreen({
    super.key,
    required this.recipeTitle,
    required this.recipeImage,
    required this.creatorImage,
    required this.creatorName,
    required this.recipeRating,
    required this.creatorLocation,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(Icons.more_horiz),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [_recipeTitleSection(), _IngredientsSection()],
        ),
      ),
    );
  }

  Padding _IngredientsSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      child: SizedBox(
        height: 496,
        width: 375,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Ingredients",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 20),
                ),
                Spacer(),
                Row(
                  children: [
                    Text(
                      Dummyincredient.incredientdata.length.toString(),
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: ColorConstants.neutral),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      "Item",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: ColorConstants.neutral),
                    )
                  ],
                )
              ],
            ),
            SizedBox(height: 16),
            SizedBox(
              child: ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => IncredientCardWidget(
                        incredientImage: Dummyincredient.incredientdata[index]
                            ["incredientImage"],
                        incredientName: Dummyincredient.incredientdata[index]
                            ["incredientName"],
                        incredientQuantity: Dummyincredient
                            .incredientdata[index]["incredientQuantity"],
                      ),
                  separatorBuilder: (context, index) => SizedBox(
                        height: 12,
                      ),
                  itemCount: Dummyincredient.incredientdata.length),
            )
          ],
        ),
      ),
    );
  }

  Column _recipeTitleSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 12, left: 20),
          child: Text(
            recipeTitle,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
          ),
        ),
        RecipeDetailCard(
          recipeImage: recipeImage,
          creatorImage: creatorImage,
          creatorName: creatorName,
          recipeRating: recipeRating,
          creatorLocation: creatorLocation,
        )
      ],
    );
  }
}
