import 'package:flutter/material.dart';
import 'package:food_recipee_sample/dummyDb.dart';
import 'package:food_recipee_sample/utils/constants/color_constants.dart';
import 'package:food_recipee_sample/view/global_widget/custom_video_card.dart';
import 'package:food_recipee_sample/view/recipe_details_screen/recipe_details_screen.dart';

class BookmarkScreen extends StatelessWidget {
  const BookmarkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              title: Text(
                "Saved recipes",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              bottom: TabBar(
                  labelColor: Colors.white,
                  unselectedLabelColor: ColorConstants.primaryColor,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: ColorConstants.primaryColor),
                  dividerColor: Colors.transparent,
                  tabs: [
                    Tab(
                      child: Text("salad"),
                    ),
                    Tab(
                      child: Text("Breakfast"),
                    ),
                  ]),
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: ListView.builder(
                itemCount: Dummydb.data.length,
                itemBuilder: (context, index) => CustomVideoCard(
                  onCardTaped: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RecipeDetailsScreen(
                            recipeTitle: Dummydb.data[index]["caption"],
                          ),
                        ));
                  },
                  duration: Dummydb.data[index]["duration"],
                  caption: Dummydb.data[index]["caption"],
                  backgroundImage: Dummydb.data[index]["backgroundImg"],
                  dpImage: Dummydb.data[index]["dpImage"],
                  rating: Dummydb.data[index]["rating"],
                  name: Dummydb.data[index]["name"],
                ),
              ),
            )),
      ),
    );
  }
}
