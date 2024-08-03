import 'package:flutter/material.dart';

import 'package:netflix_clone/utils/constants/color_constants.dart';

class CustomVideoCard extends StatelessWidget {
  const CustomVideoCard({super.key, required this.imageurl});
  final String imageurl;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(imageurl,
          height: 195,
          width: double.infinity,
          fit: BoxFit.cover,
          
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.notifications_sharp,
                        color: Colors.white,
                        size: 24,
                      ),
                      Text(
                        "Remind me",
                        style: TextStyle(
                            color: ColorConstants.Mainwhite.withOpacity(.83)),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.share,
                        color: Colors.white,
                        size: 24,
                      ),
                      Text(
                        "Share",
                        style: TextStyle(
                            color: ColorConstants.Mainwhite.withOpacity(.83)),
                      )
                    ],
                  )
                ],
              ),
              Text(
                "Season 1 Coming December 14",
                style: TextStyle(
                    color: ColorConstants.Mainwhite.withOpacity(.83),
                    fontSize: 11),
              ),
              Text(
                "Castle & Castle",
                style: TextStyle(
                    color: ColorConstants.Mainwhite,
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
              ),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit.Sit quam dui,vivamus bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa,id ut ipsum aliquam  enim non posuere pulvinar diam.",
                style: TextStyle(
                    color: ColorConstants.Mainwhite.withOpacity(.83),
                    fontWeight: FontWeight.bold,
                    fontSize: 11.14),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                "Steamy * Soapy * Slow * Burn * Suspenseful * Teen * Mystery",
                style: TextStyle(
                    color: ColorConstants.Mainwhite.withOpacity(.83),
                    fontWeight: FontWeight.w500,
                    fontSize: 11.14),
              )
            ],
          ),
        )
      ],
    );
  }
}
