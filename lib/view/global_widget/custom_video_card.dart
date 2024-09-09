import 'package:flutter/material.dart';
import 'package:food_recipee_sample/utils/constants/color_constants.dart';

class CustomVideoCard extends StatelessWidget {
  String backgroundImage;
  String rating;
  String caption;
  String dpImage;
  String name;
  String duration;
  void Function()? onCardTaped;

  CustomVideoCard(
      {required this.rating,
      required this.backgroundImage,
      required this.caption,
      required this.dpImage,
      required this.name,
      required this.duration,
      required this.onCardTaped});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onCardTaped,
      child: SizedBox(
        width: 280,
        child: Column(
          children: [
            Container(
              height: 180,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.red,
                  image: DecorationImage(
                      fit: BoxFit.cover, image: NetworkImage(backgroundImage))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
                    child: Row(
                      children: [
                        Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.star,
                                size: 14,
                                color: Colors.white,
                              ),
                              Text(
                                rating,
                                style: TextStyle(
                                    fontSize: 14, color: Colors.white),
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: ColorConstants.lightblack.withOpacity(.3),
                          ),
                          height: 28,
                          width: 58,
                        ),
                        Spacer(),
                        CircleAvatar(
                          child: Icon(Icons.bookmark_outline),
                        )
                      ],
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Color(0xff303030).withOpacity(.3),
                    radius: 24,
                    child: Icon(
                      Icons.play_arrow_rounded,
                      color: Colors.white,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8, bottom: 8),
                      child: Container(
                        child: Center(
                            child: Text(
                          duration,
                          style: TextStyle(color: Colors.white),
                        )),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: ColorConstants.lightblack.withOpacity(.3),
                        ),
                        height: 26,
                        width: 42,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  caption,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Icon(Icons.more_horiz)
              ],
            ),
            Row(
              children: [
                CircleAvatar(
                  radius: 16,
                  backgroundImage: NetworkImage(dpImage),
                ),
                SizedBox(
                  width: 7,
                ),
                Text(
                  name,
                  style: TextStyle(color: ColorConstants.neutral),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
