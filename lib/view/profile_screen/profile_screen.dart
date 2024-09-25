import 'package:flutter/material.dart';
import 'package:food_recipee_sample/dummyDb.dart';
import 'package:food_recipee_sample/utils/constants/color_constants.dart';
import 'package:food_recipee_sample/view/global_widget/custom_video_card.dart';
import 'package:food_recipee_sample/view/global_widget/profile_recipe_card_widget.dart';
import 'package:food_recipee_sample/view/profile_screen/widget/custom_profile_data_widget.dart';
import 'package:food_recipee_sample/view/recipe_details_screen/recipe_details_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              title: Text(
                "My profile",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
              actions: [
                Icon(Icons.more_horiz),
                SizedBox(
                  width: 20,
                )
              ],
            ),
            body: Column(
              children: [
                _profile_section(),
                SizedBox(
                  height: 20,
                ),
                _detailSection(),
                SizedBox(
                  height: 20,
                ),
                Divider(),
                _tabbarSection(),
                _buildTabbaViewrSection()
              ],
            ),
          ),
        ));
  }

  Expanded _buildTabbaViewrSection() {
    return Expanded(
      child: TabBarView(children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
          child: ListView.separated(
            separatorBuilder: (context, index) => SizedBox(
              height: 16,
            ),
            itemCount: Dummydb.data.length,
            itemBuilder: (context, index) => CustomVideoCard(
              onCardTaped: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RecipeDetailsScreen(
                        recipeTitle: Dummydb.data[index]["caption"],
                        recipeImage: Dummydb.data[index]["backgroundImg"],
                        creatorImage: Dummydb.data[index]["dpImage"],
                        creatorName: Dummydb.data[index]["name"],
                        recipeRating: Dummydb.data[index]["rating"],
                        creatorLocation: Dummydb.data[index]["Location"],
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
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
          child: ListView.separated(
              itemBuilder: (context, index) => profileRecipeCardWidget(),
              separatorBuilder: (context, index) => SizedBox(
                    height: 16,
                  ),
              itemCount: 5),
        )
      ]),
    );
  }

  Padding _tabbarSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          TabBar(
              unselectedLabelColor: ColorConstants.primaryColor,
              labelColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.tab,
              dividerColor: Colors.transparent,
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: ColorConstants.primaryColor),
              tabs: [
                Tab(
                  text: "videos",
                ),
                Tab(
                  text: "Recipe",
                ),
              ]),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  Padding _detailSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        height: 48,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            cutomProfileDataWidget(
              title: "Recipee",
              count: "3",
            ),
            cutomProfileDataWidget(
              title: 'Videos',
              count: "13",
            ),
            cutomProfileDataWidget(
              title: "Follwers",
              count: "14K",
            ),
            cutomProfileDataWidget(
              title: "Following",
              count: "120",
            ),
          ],
        ),
      ),
    );
  }

  Container _profile_section() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: 197,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?auto=compress&cs=tinysrgb&w=600"),
                radius: 50,
              ),
              Container(
                height: 36,
                width: 107,
                child: Center(
                    child: Text(
                  "Edit profile",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: ColorConstants.primaryColor),
                )),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: ColorConstants.primaryColor)),
              )
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            "Alessandra Blair",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            "Hello world im Alessandra Blair, im \nfrom italy I love cooking so much",
            style: TextStyle(
                color: ColorConstants.neutral,
                fontSize: 14,
                fontWeight: FontWeight.normal),
          ),
        ],
      ),
    );
  }
}
