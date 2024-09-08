import 'package:flutter/material.dart';
import 'package:food_recipee_sample/dummyDb.dart';
import 'package:food_recipee_sample/view/global_widget/custom_video_card.dart';

class BookmarkScreen extends StatelessWidget {
  const BookmarkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
          body: ListView.builder(
        itemCount: Dummydb.data.length,
        itemBuilder: (context, index) => CustomVideoCard(
          duration: Dummydb.data[index]["duration"],
          caption: Dummydb.data[index]["caption"],
          backgroundImage: Dummydb.data[index]["backgroundImg"],
          dpImage: Dummydb.data[index]["dpImage"],
          rating: Dummydb.data[index]["rating"],
          name: Dummydb.data[index]["name"],
        ),
      )),
    );
  }
}
