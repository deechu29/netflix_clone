import 'package:flutter/material.dart';

import 'package:netflix_clone/utils/constants/color_constants.dart';

class Newarrivalcard extends StatelessWidget {
  const Newarrivalcard({
    required this.imageurl,
  });
  final String imageurl;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
      color: ColorConstants.searchgrey,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(2),
            child: Image.network(
                height: 55, width: 113, fit: BoxFit.cover, imageurl),
          ),
          SizedBox(
            width: 38,
          ),
          Column(
            children: [
              Text(
                "New Arrival",
                style: TextStyle(
                  color: ColorConstants.Mainwhite,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "El Chapo",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: ColorConstants.Mainwhite.withOpacity(0.83)),
              ),
              Text(
                "Nov 6",
                style: TextStyle(
                    color: ColorConstants.Mainwhite.withOpacity(0.48)),
              )
            ],
          )
        ],
      ),
    );
  }
}
