import 'package:flutter/material.dart';
import 'package:spitify_clone/View/home_screen/home_widgets/horiz_listview_builder.dart';
import 'package:spitify_clone/View/home_screen/home_widgets/topcard_builder.dart';

import 'package:spitify_clone/database/database.dart';
import 'package:spitify_clone/utils/color_constant/color_constant.dart';

// ignore: must_be_immutable
class HomeSccreen extends StatelessWidget {
  HomeSccreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColor.bgBlackColor,
      appBar: AppBar(
        backgroundColor: ConstantColor.bgBlackColor,
        elevation: 0,
        titleTextStyle: TextStyle(fontSize: 24),
        title: Text(
          "Good Morning",
          style: TextStyle(
              color: ConstantColor.textWhite, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications_none)),
          IconButton(onPressed: () {}, icon: Icon(Icons.history)),
          IconButton(onPressed: () {}, icon: Icon(Icons.settings_outlined)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                  mainAxisExtent: 60,
                ),
                itemCount: Database.topCardData.length,
                itemBuilder: (context, index) => TopcardBuilder(
                    title: Database.topCardData[index]["song name"],
                    image: Database.topCardData[index]["image"]),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Trending Now",
                style: TextStyle(
                    color: ConstantColor.textWhite,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 230,
                    child: ListView.builder(
                      itemCount: Database.trendingTamilList.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => HorizListviewBuilder(
                          titleOrArtist: Database.trendingTamilList[index]
                              ["artists"],
                          image: Database.trendingTamilList[index]["image"]),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Popular",
                style: TextStyle(
                    color: ConstantColor.textWhite,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 230,
                    child: ListView.builder(
                      itemCount: Database.trendingTamilList.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => HorizListviewBuilder(
                          titleOrArtist: Database.trendingTamilList[index]
                              ["artists"],
                          image: Database.trendingTamilList[index]["image"]),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Hits",
                style: TextStyle(
                    color: ConstantColor.textWhite,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 230,
                    child: ListView.builder(
                      itemCount: Database.trendingTamilList.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => HorizListviewBuilder(
                          titleOrArtist: Database.trendingTamilList[index]
                              ["artists"],
                          image: Database.trendingTamilList[index]["image"]),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
