import 'package:flutter/material.dart';
import 'package:food_recipee_sample/dummyDb.dart';
import 'package:food_recipee_sample/utils/constants/color_constants.dart';
import 'package:food_recipee_sample/view/global_widget/custom_video_card.dart';
import 'package:food_recipee_sample/view/home_screen/widget/popular_card.dart';
import 'package:food_recipee_sample/view/home_screen/widget/popular_creator_widget.dart';
import 'package:food_recipee_sample/view/home_screen/widget/recent_recipee_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      initialIndex: 1,
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                // #title - section 1
                _titlesection(),
                _trendingNowSection(),
                _popularSection(),
                _RecentRecipeSection(),
                _PopularCreatorsSection(),
                SizedBox(
                  height: 12,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Padding _PopularCreatorsSection() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 19),
      child: SizedBox(
        height: 187,
        width: 375,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20, top: 12, bottom: 16),
              child: Row(
                children: [
                  Text(
                    "Popular creators",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  Spacer(),
                  Text(
                    "See All",
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.w600,
                        fontSize: 14),
                  ),
                  SizedBox(width: 8),
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.red,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 119,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => PopularCreatorCard(),
                  separatorBuilder: (context, index) => SizedBox(width: 12),
                  itemCount: 4),
            )
          ],
        ),
      ),
    );
  }

  Padding _RecentRecipeSection() {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: SizedBox(
        height: 259,
        width: 375,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20, top: 12),
              child: Row(
                children: [
                  Text(
                    "Recent recipe",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  Spacer(),
                  Text(
                    "See All",
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.w600,
                        fontSize: 14),
                  ),
                  SizedBox(width: 8),
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.red,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 191,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => RecentRecipeWidget(),
                  separatorBuilder: (context, index) => SizedBox(
                        width: 16,
                      ),
                  itemCount: 5),
            )
          ],
        ),
      ),
    );
  }

  SizedBox _popularSection() {
    return SizedBox(
      height: 353,
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 12, bottom: 16),
              child: Text(
                "popular category",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              height: 34,
              width: 387,
              child: TabBar(
                  isScrollable: true,
                  tabAlignment: TabAlignment.start,
                  labelColor: Colors.white,
                  unselectedLabelColor: ColorConstants.primaryColor,
                  indicatorSize: TabBarIndicatorSize.tab,
                  // indicatorColor: Colors.red,
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
                    Tab(
                      child: Text("Apetizer"),
                    ),
                    Tab(
                      child: Text("noodle"),
                    ),
                    Tab(
                      child: Text("Lunch"),
                    ),
                  ]),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 231,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => popularCard(),
                  separatorBuilder: (context, index) => SizedBox(
                        width: 16,
                      ),
                  itemCount: 5),
            )
          ],
        ),
      ),
    );
  }

  Padding _trendingNowSection() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Trending Now 🔥",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 20),
              ),
              Spacer(),
              Text(
                "See All",
                style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.w600,
                    fontSize: 14),
              ),
              SizedBox(width: 8),
              Icon(
                Icons.arrow_forward,
                color: Colors.red,
              )
            ],
          ),
          SizedBox(
            height: 16,
          ),
          SizedBox(
            height: 256,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => CustomVideoCard(
                      onCardTaped: () {},
                      duration: Dummydb.data[index]["duration"],
                      caption: Dummydb.data[index]["caption"],
                      backgroundImage: Dummydb.data[index]["backgroundImg"],
                      dpImage: Dummydb.data[index]["dpImage"],
                      rating: Dummydb.data[index]["rating"],
                      name: Dummydb.data[index]["name"],
                    ),
                separatorBuilder: (context, index) => SizedBox(
                      width: 16,
                    ),
                itemCount: Dummydb.data.length),
          ),
        ],
      ),
    );
  }

  Column _titlesection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 20),
          child: Text(
            "Find best recipes\nfor cooking",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            textAlign: TextAlign.justify,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.search,
                color: ColorConstants.lightgrey,
              ),
              hintText: "Search recipes",
              hintStyle:
                  TextStyle(color: ColorConstants.lightgrey, fontSize: 14),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: ColorConstants.lightgrey,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: ColorConstants.lightgrey,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
