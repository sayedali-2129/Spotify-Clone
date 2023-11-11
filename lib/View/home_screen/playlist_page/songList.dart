import 'package:flutter/material.dart';
import 'package:spitify_clone/utils/color_constant/color_constant.dart';

class SongListTile extends StatelessWidget {
  const SongListTile(
      {super.key,
      required this.songName,
      required this.singersName,
      required this.image});
  final String songName;
  final String singersName;
  final String image;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.all(0),
      leading: Container(
        height: 48,
        width: 49,
        decoration: BoxDecoration(
            image:
                DecorationImage(image: NetworkImage(image), fit: BoxFit.cover)),
      ),
      title: Text(
        songName,
        style: TextStyle(
            color: ConstantColor.textWhite, fontWeight: FontWeight.bold),
      ),
      subtitle: Row(
        children: [
          Container(
            height: 12,
            width: 36,
            decoration: BoxDecoration(
                color: Colors.white60, borderRadius: BorderRadius.circular(2)),
            child: Center(
              child: Text(
                "LYRICS",
                style: TextStyle(fontSize: 9, color: Colors.black),
              ),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            singersName,
            overflow: TextOverflow.clip,
            maxLines: 1,
            style: TextStyle(
                color: Colors.white60,
                fontWeight: FontWeight.bold,
                fontSize: 11.8),
          )
        ],
      ),
      trailing: Icon(
        Icons.more_vert,
        color: ConstantColor.textWhite,
      ),
    );
  }
}
