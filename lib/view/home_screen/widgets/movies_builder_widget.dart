import 'package:flutter/material.dart';

import 'package:netflix_clone/utils/constants/color_constants.dart';

class MoviesBuilderWidget extends StatelessWidget {
  const MoviesBuilderWidget({
    super.key,
    this.customheight = 115,
    this.customwidth = 103,
    this.iscircle = false,
    required this.Title,
    required this.posterimages,
    this.haveInfocard = false,
  });
  final double customheight;
  final double customwidth;
  final bool iscircle;
  final String Title;
  final List<String> posterimages;
  final bool haveInfocard;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text(
            Title,
            style: TextStyle(
                color: ColorConstants.Mainwhite,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: iscircle ? customwidth : customheight,
          child: ListView.separated(
            padding: EdgeInsets.symmetric(
              horizontal: 12,
            ),
            itemBuilder: (context, index) => Container(
              child: Visibility(
                visible: haveInfocard,
                child: Column(
                  children: [
                    Container(
                      height: 3,
                      color: ColorConstants.primargrey,
                    ),
                    Container(
                        padding: EdgeInsets.symmetric(vertical: 7),
                        height: 37,
                        width: 103,
                        color: ColorConstants.primaryblack,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(
                              Icons.info_outline,
                              color: ColorConstants.Mainwhite,
                            ),
                            Icon(
                              Icons.more_vert,
                              color: ColorConstants.Mainwhite,
                            )
                          ],
                        ))
                  ],
                ),
              ),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(posterimages[index])),
                  shape: iscircle ? BoxShape.circle : BoxShape.rectangle,
                  color: Colors.amber),
              height: customheight,
              width: customwidth,
            ),
            separatorBuilder: (context, index) => SizedBox(
              width: 7,
            ),
            itemCount: posterimages.length,
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
          ),
        ),
        SizedBox(
          height: 22,
        )
      ],
    );
  }
}
