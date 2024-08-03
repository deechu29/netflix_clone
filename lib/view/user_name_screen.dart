import 'package:flutter/material.dart';
import 'package:netflix_clone/dummydb.dart';
import 'package:netflix_clone/utils/constants/color_constants.dart';
import 'package:netflix_clone/utils/constants/image_constants.dart';
import 'package:netflix_clone/view/bottom_navbar/bottom_navbar_screen.dart';
import 'package:netflix_clone/view/globel_widget/user_name_card.dart';

class UserNameScreen extends StatefulWidget {
  const UserNameScreen({super.key});

  @override
  State<UserNameScreen> createState() => _UserNameScreenState();
}

class _UserNameScreenState extends State<UserNameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstants.MainBlack,
        appBar: AppBar(
          backgroundColor: ColorConstants.MainBlack,
          centerTitle: true,
          title: Image.asset(
            ImageConstants.LOGO_PNG,
            height: 37.2,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.edit,
              ),
              color: Colors.white,
            )
          ],
        ),
        body: Center(
          child: GridView.builder(
            padding: EdgeInsets.symmetric(
              horizontal: 75,
            ),
            shrinkWrap: true,
            itemCount: Dummydb.userlist.length + 1,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (context, index) {
              if (index < Dummydb.userlist.length) {
                return UserNameCard(
                  onCardPress: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BottomNavbarScreen(),
                        ));
                  },
                  imagepath: Dummydb.userlist[index]["imagepath"]!,
                  username: Dummydb.userlist[index]["name"]!,
                );
              } else {
                return InkWell(
                  onTap: () {
                    Dummydb.userlist.add(
                      {
                        "imagepath": ImageConstants.user1_PNG,
                        "name": "Emenalo"
                      },
                    );
                    setState(() {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          backgroundColor: Colors.green,
                          content: Text("profile added")));
                    });
                  },
                  child: Column(
                    children: [
                      Image.asset(ImageConstants.add_PNG),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Add profile",
                        style: TextStyle(color: ColorConstants.Mainwhite),
                      )
                    ],
                  ),
                );
              }
            },
          ),
        ));
  }
}
