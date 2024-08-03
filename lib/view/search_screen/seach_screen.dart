import 'package:flutter/material.dart';
import 'package:netflix_clone/dummydb.dart';
import 'package:netflix_clone/utils/constants/color_constants.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.MainBlack,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: ColorConstants.searchbargrey,
                    ),
                    suffixIcon: Icon(
                      Icons.mic,
                      color: ColorConstants.searchbargrey,
                    ),
                    hintText: "Search for a show, movie, genre, etc",
                    hintStyle: TextStyle(
                      color: ColorConstants.searchbargrey,
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Top Searches",
                style: TextStyle(
                    color: ColorConstants.Mainwhite,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              Expanded(
                  child: ListView.builder(
                itemCount: Dummydb.searchCards.length,
                itemBuilder: (context, index) => ListTile(
                  tileColor: ColorConstants.searchgrey,
                  leading: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                Dummydb.searchCards[index]['url']))),
                    width: 100,
                  ),
                  title: Text(
                    Dummydb.searchCards[index]['title'],
                    style: TextStyle(
                      color: ColorConstants.Mainwhite,
                    ),
                  ),
                  trailing: Icon(
                    Icons.play_circle_outline_rounded,
                    color: ColorConstants.Mainwhite,
                  ),
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
