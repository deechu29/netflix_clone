import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/constants/color_constants.dart';

class UserNameCard extends StatelessWidget {
  const UserNameCard(
      {super.key,
      required this.imagepath,
      required this.username,
      this.height,
      this.width,
      this.onCardPress});
  final String imagepath;
  final String username;
  final double? height, width;
  final void Function()? onCardPress;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onCardPress,
      child: Column(
        children: [
          Container(
            child: Image.asset(
              imagepath,
              height: height,
              width: width,
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            username,
            style: TextStyle(color: ColorConstants.Mainwhite, fontSize: 13.5),
          ),
        ],
      ),
    );
  }
}
