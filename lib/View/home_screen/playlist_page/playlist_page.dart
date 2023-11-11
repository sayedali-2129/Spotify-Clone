import 'package:flutter/material.dart';
import 'package:spitify_clone/View/home_screen/playlist_page/songList.dart';
import 'package:spitify_clone/database/database.dart';
import 'package:spitify_clone/utils/color_constant/color_constant.dart';

class PlayListPage extends StatelessWidget {
  const PlayListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ConstantColor.bgBlackColor,
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xff8d6b79), Color(0xff121212)])),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      children: [
                        SizedBox(
                          height: 40,
                          width: 260,
                          child: TextField(
                            cursorColor: ConstantColor.textWhite,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.search),
                              prefixIconColor: ConstantColor.textWhite,
                              contentPadding: EdgeInsets.all(10),
                              hintStyle: TextStyle(
                                  color: ConstantColor.textWhite,
                                  fontWeight: FontWeight.bold),
                              hintText: "Find in playlist",
                              filled: true,
                              fillColor: Colors.white12,
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 40,
                          width: 58,
                          decoration: BoxDecoration(
                              color: Colors.white12,
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text(
                              "Filters",
                              style: TextStyle(
                                  color: ConstantColor.textWhite,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 216,
                        width: 216,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://c.saavncdn.com/257/Ae-Dil-Hai-Mushkil-Hindi-2016-500x500.jpg"))),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Ae Dil Hai Mushkil",
                    style: TextStyle(
                        color: ConstantColor.textWhite,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.favorite_border_outlined,
                            color: ConstantColor.lightGrey,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Icon(
                            Icons.download_for_offline_outlined,
                            color: ConstantColor.lightGrey,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Icon(
                            Icons.more_vert,
                            color: ConstantColor.lightGrey,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                        ],
                      ),
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CircleAvatar(
                            radius: 35,
                            backgroundColor: ConstantColor.themeGreen,
                            child: Center(
                              child: Icon(
                                Icons.play_arrow,
                                color: Colors.black,
                                size: 40,
                              ),
                            ),
                          ),
                          CircleAvatar(
                            radius: 12,
                            backgroundColor: ConstantColor.containerGrey,
                            child: Center(
                              child: Icon(
                                Icons.shuffle,
                                color: ConstantColor.themeGreen,
                                size: 15,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: Database.songsList.length,
                    itemBuilder: (context, index) => SongListTile(
                      singersName: Database.songsList[index]["Singer"],
                      songName: Database.songsList[index]["name"],
                      image:
                          "https://c.saavncdn.com/257/Ae-Dil-Hai-Mushkil-Hindi-2016-500x500.jpg",
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
