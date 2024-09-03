import 'package:flutter/material.dart';
import 'package:food_recipee_sample/utils/constants/color_constants.dart';
import 'package:food_recipee_sample/view/global_widget/custom_video_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // #title - section 1
            _titlesection(),
            _trendingNowSection()
          ],
        ),
      ),
    );
  }

  Column _trendingNowSection() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 12),
          child: Row(
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
        ),
        SizedBox(
          height: 16,
        ),
        CustomVideoCard(),
        CustomVideoCard(),
      ],
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
