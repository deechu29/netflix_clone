import 'package:flutter/material.dart';
import 'package:netflix_clone/dummydb.dart';
import 'package:netflix_clone/utils/constants/color_constants.dart';
import 'package:netflix_clone/utils/constants/image_constants.dart';
import 'package:netflix_clone/view/home_screen/widgets/movies_builder_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildMoviepostersection(),
            SizedBox(
              height: 11,
            ),
            _buildplaysection(),
            SizedBox(
              height: 40,
            ),
            MoviesBuilderWidget(
              posterimages: Dummydb.posterlist1,
              Title: "preview",
              iscircle: true,
              customwidth: 102,
            ),
            MoviesBuilderWidget(
              haveInfocard: true,
              posterimages: Dummydb.posterlist2,
              Title: "Continue Watching for Emenalo",
            ),
            MoviesBuilderWidget(
              posterimages: Dummydb.posterlist3,
              Title: "Popular on Netflix",
            ),
            MoviesBuilderWidget(
              posterimages: Dummydb.posterlist4,
              Title: "Trending Now",
              customheight: 251,
              customwidth: 154,
            ),
          ],
        ),
      ),
    );
  }

  Row _buildplaysection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Icon(
              Icons.add,
              color: Colors.white,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "My playlist",
              style: TextStyle(color: Colors.white, fontSize: 10),
            )
          ],
        ),
        SizedBox(
          width: 42,
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 7, horizontal: 15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6), color: Color(0xffC4C4C4)),
          child: Row(
            children: [
              Icon(
                Icons.play_arrow,
                size: 40,
                color: ColorConstants.MainBlack,
              ),
              SizedBox(
                width: 11,
              ),
              Text(
                "Play",
                style: TextStyle(color: ColorConstants.MainBlack, fontSize: 14),
              )
            ],
          ),
        ),
        SizedBox(
          width: 42,
        ),
        Column(
          children: [
            Icon(
              Icons.info_outline,
              color: Colors.white,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Info",
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
          ],
        ),
      ],
    );
  }

  Stack _buildMoviepostersection() {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(ImageConstants.COVERIMAGE_PNG))),
          height: 415,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          height: 415,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [ColorConstants.MainBlack, Colors.transparent],
                  begin: Alignment.bottomCenter,
                  end: Alignment.center)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image(image: AssetImage(ImageConstants.icon1_PNG)),
                  Text(
                    "Tv shows",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  Text(
                    "Movies",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  Text(
                    "Mylist",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(image: AssetImage(ImageConstants.icon2_PNG)),
                  Text("#2 in Nigeria Today",
                      style: TextStyle(color: Colors.white, fontSize: 13))
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
