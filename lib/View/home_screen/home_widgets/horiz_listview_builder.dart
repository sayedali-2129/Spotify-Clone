import 'package:flutter/material.dart';
import 'package:spitify_clone/utils/color_constant/color_constant.dart';

class HorizListviewBuilder extends StatelessWidget {
  const HorizListviewBuilder({
    super.key,
    required this.titleOrArtist,
    required this.image,
  });
  final String titleOrArtist;
  final String image;

  @override
  Widget build(BuildCcontext) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: SizedBox(
        width: 171,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 171,
              height: 175,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: NetworkImage(image),
                fit: BoxFit.cover,
              )),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              titleOrArtist,
              overflow: TextOverflow.clip,
              maxLines: 2,
              style: TextStyle(
                  fontSize: 13,
                  color: ConstantColor.textWhite,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
