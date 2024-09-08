import 'package:flutter/material.dart';

class PopularCreatorCard extends StatelessWidget {
  const PopularCreatorCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 75,
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
                "https://images.pexels.com/photos/91227/pexels-photo-91227.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
            radius: 37.5,
          ),
          SizedBox(
            height: 8,
          ),
          SizedBox(
            width: 43,
            height: 36,
            child: Text(
              textAlign: TextAlign.center,
              "James Wolden",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}
