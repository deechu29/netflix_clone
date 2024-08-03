import 'package:flutter/material.dart';
import 'package:netflix_clone/dummydb.dart';
import 'package:netflix_clone/utils/constants/color_constants.dart';
import 'package:netflix_clone/utils/constants/image_constants.dart';
import 'package:netflix_clone/view/globel_widget/user_name_card.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.MainBlack,
      body: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 37,
          ),
          _builder_userNamecard(),
          SizedBox(
            height: 9,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.edit,
                color: ColorConstants.Mainwhite,
                size: 12,
              ),
              Text(
                "Manage Profiles",
                style: TextStyle(color: ColorConstants.Mainwhite),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            height: 300,
            width: 375,
            color: Color(0xff1A1A1A),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                children: [
                  Icon(
                    Icons.message_outlined,
                    color: ColorConstants.Mainwhite,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Tell friends about Netflix.",
                    style: TextStyle(
                        color: ColorConstants.Mainwhite,
                        fontWeight: FontWeight.bold,
                        fontSize: 19),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamusbibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa,",
                style: TextStyle(color: ColorConstants.Mainwhite, fontSize: 13),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Terms&condition",
                style: TextStyle(
                    color: ColorConstants.Mainwhite,
                    decoration: TextDecoration.underline,
                    decorationColor: ColorConstants.Mainwhite),
              ),
              SizedBox(
                height: 11,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: ColorConstants.MainBlack,
                          border: InputBorder.none),
                    ),
                  ),
                  Container(
                    height: 41,
                    width: 80,
                    color: ColorConstants.Mainwhite,
                    child: Center(
                      child: Text(
                        "Copy link",
                        style: TextStyle(
                            color: ColorConstants.MainBlack,
                            fontSize: 17,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image(
                        image: AssetImage(
                      ImageConstants.whatsapp_PNG,
                    )),
                    SizedBox(
                      height: 40,
                      width: 29,
                      child: VerticalDivider(
                        color: Color(0xff8C8787),
                        thickness: 2,
                      ),
                    ),
                    Image(
                        image: AssetImage(
                      ImageConstants.facebook_PNG,
                    )),
                    SizedBox(
                      height: 40,
                      width: 29,
                      child: VerticalDivider(
                        color: Color(0xff8C8787),
                        thickness: 2,
                      ),
                    ),
                    Image(
                        image: AssetImage(
                      ImageConstants.Gmail_PNG,
                    )),
                    SizedBox(
                      height: 40,
                      width: 29,
                      child: VerticalDivider(
                        color: Color(0xff8C8787),
                        thickness: 2,
                      ),
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.more_horiz_outlined,
                          color: ColorConstants.Mainwhite,
                        ),
                        Text(
                          "More",
                          style: TextStyle(
                              color: ColorConstants.Mainwhite,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ]),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 26),
            child: Row(
              children: [
                Icon(
                  Icons.check,
                  color: ColorConstants.Mainwhite,
                  size: 30,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "MyList",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Divider(
            color: Color(0xff424242),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 26),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "App Settings ",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Account",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Help",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Sign Out",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }

  SingleChildScrollView _builder_userNamecard() {
    return SingleChildScrollView(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: List.generate(
              Dummydb.userlist.length,
              (index) => UserNameCard(
                  onCardPress: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  height: index == selectedIndex ? 70 : 60,
                  width: index == selectedIndex ? 73 : 65,
                  imagepath: Dummydb.userlist[index]["imagepath"]!,
                  username: Dummydb.userlist[index]["name"]!),
            ),
          ),
          Container(
            height: 60,
            width: 63,
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Icon(
              Icons.add,
              color: ColorConstants.Mainwhite,
              size: 30,
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: ColorConstants.Mainwhite)),
          )
        ],
      ),
    );
  }
}
