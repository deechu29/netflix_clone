import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/constants/color_constants.dart';

class DownloadScreen extends StatelessWidget {
  const DownloadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.MainBlack,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                "Smart downloads",
                style: TextStyle(
                    color: ColorConstants.Mainwhite,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Introducing Downloads For You",
              style: TextStyle(
                  color: ColorConstants.Mainwhite,
                  fontWeight: FontWeight.bold,
                  fontSize: 19),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamusbibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa,id ut ipsum aliquam  enim non posuere pulvinar diam.",
              style: TextStyle(
                color: ColorConstants.Mainwhite,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: CircleAvatar(
                backgroundColor: ColorConstants.searchgrey,
                radius: 100,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                  color: ColorConstants.setupbutton,
                  borderRadius: BorderRadius.circular(2)),
              child: Center(
                child: Text(
                  "SETUP",
                  style: TextStyle(
                    color: ColorConstants.Mainwhite,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Container(
                child: Center(
                  child: Text(
                    "Find Something to Download",
                    style: TextStyle(
                      color: ColorConstants.Mainwhite,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                width: 239,
                height: 33,
                decoration: BoxDecoration(
                    color: ColorConstants.searchgrey,
                    borderRadius: BorderRadius.circular(2)),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
