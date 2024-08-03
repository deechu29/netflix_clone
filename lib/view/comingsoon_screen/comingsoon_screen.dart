import 'package:flutter/material.dart';
import 'package:netflix_clone/dummydb.dart';
import 'package:netflix_clone/utils/constants/color_constants.dart';
import 'package:netflix_clone/view/home_screen/widgets/New_arrivals_card.dart';
import 'package:netflix_clone/view/home_screen/widgets/custom_video_card.dart';

class ComingsoonScreen extends StatelessWidget {
  const ComingsoonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        titleSpacing: 0,
        backgroundColor: Colors.black,
        leading: Center(
          child: CircleAvatar(
            backgroundColor: Colors.red,
            radius: 15,
            child: Icon(
              Icons.notifications_sharp,
              color: ColorConstants.Mainwhite,
            ),
          ),
        ),
        title: Text(
          "Notifications",
          style: TextStyle(
              color: ColorConstants.Mainwhite,
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
                children: List.generate(
              3,
              (index) => Newarrivalcard(imageurl: Dummydb.posterlist1[index]),
            )),
            SizedBox(
              height: 25,
            ),
            Column(
                children: List.generate(
              Dummydb.posterlist2.length,
              (index) => CustomVideoCard(
                imageurl: Dummydb.posterlist2[index],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
