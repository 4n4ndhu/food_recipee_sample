import 'package:flutter/material.dart';
import 'package:food_recipee_sample/utils/constants/color_constants.dart';

class RecipeDetailCard extends StatelessWidget {
  String recipeImage;
  String creatorImage;
  String creatorName;
  String recipeRating;
  String creatorLocation;

  RecipeDetailCard({
    super.key,
    required this.recipeImage,
    required this.creatorImage,
    required this.creatorName,
    required this.recipeRating,
    required this.creatorLocation,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 12, bottom: 14),
      child: SizedBox(
        height: 320,
        width: 375,
        child: SizedBox(
          height: 294,
          width: 335,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Center(
                  child: CircleAvatar(
                    backgroundColor: Color(0xff303030).withOpacity(.3),
                    radius: 24,
                    child: Icon(
                      Icons.play_arrow_rounded,
                      color: Colors.white,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: NetworkImage(
                          recipeImage,
                        ),
                        fit: BoxFit.cover)),
                height: 223,
              ),
              SizedBox(height: 16),
              SizedBox(
                height: 20,
                width: 148,
                child: Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Text(
                      recipeRating,
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(width: 7),
                    Text(
                      "(300 Reviews)",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                          color: ColorConstants.neutral),
                    )
                  ],
                ),
              ),
              SizedBox(height: 16),
              SizedBox(
                  height: 43,
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(creatorImage),
                        radius: 20.5,
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            creatorName,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                size: 16,
                                color: ColorConstants.primaryColor,
                              ),
                              Text(
                                creatorLocation,
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                    color: ColorConstants.neutral),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Spacer(),
                      Container(
                        child: Center(
                          child: Text(
                            "Follow",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        height: 36,
                        width: 77,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: ColorConstants.primaryColor,
                        ),
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
