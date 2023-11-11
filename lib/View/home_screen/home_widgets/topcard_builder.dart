import 'package:flutter/material.dart';
import 'package:spitify_clone/View/home_screen/playlist_page/playlist_page.dart';
import 'package:spitify_clone/utils/color_constant/color_constant.dart';

class TopcardBuilder extends StatelessWidget {
  const TopcardBuilder({super.key, required this.title, required this.image});
  final String title;
  final String image;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PlayListPage(),
            ));
      },
      child: Container(
        width: 168,
        decoration: BoxDecoration(
            color: ConstantColor.containerGrey,
            borderRadius: BorderRadius.circular(5)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 57,
              width: 56,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(image), fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 12,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  title,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: TextStyle(
                      color: ConstantColor.textWhite,
                      fontSize: 13,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
