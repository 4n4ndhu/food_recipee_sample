import 'package:flutter/material.dart';

class RecipeDetailsScreen extends StatelessWidget {
  String recipeTitle;
  RecipeDetailsScreen({super.key, required this.recipeTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [Icon(Icons.more_horiz)],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 12, left: 20),
            child: Text(
              recipeTitle,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 20, right: 20, top: 12, bottom: 14),
            child: SizedBox(
              height: 320,
              width: 375,
              child: Column(
                children: [
                  Container(
                    color: Colors.red,
                    height: 223,
                    width: 335,
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Text(
                        "4.5",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                      Text("")
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
