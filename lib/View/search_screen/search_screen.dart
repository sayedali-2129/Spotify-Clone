import 'package:flutter/material.dart';
import 'package:spitify_clone/database/database.dart';
import 'package:spitify_clone/utils/color_constant/color_constant.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "Search",
              style: TextStyle(
                  color: ConstantColor.textWhite,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              cursorColor: ConstantColor.themeGreen,
              decoration: InputDecoration(
                  hintStyle: TextStyle(
                      color: ConstantColor.containerGrey,
                      fontWeight: FontWeight.bold),
                  prefixIcon: Icon(Icons.search),
                  contentPadding: EdgeInsets.all(15),
                  hintText: "Artist, Songs, or podcasts",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none),
                  filled: true,
                  fillColor: ConstantColor.textWhite),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Browse all",
              style: TextStyle(
                  color: ConstantColor.textWhite,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
            SizedBox(
              height: 10,
            ),
            GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    mainAxisExtent: 90),
                itemCount: 10,
                itemBuilder: (context, index) => Container(
                      width: 160,
                      decoration: BoxDecoration(
                          color: ConstantColor.browseAllColor[index],
                          borderRadius: BorderRadius.circular(5)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          Database.browseAllContent[index],
                          style: TextStyle(
                              fontSize: 16,
                              color: ConstantColor.textWhite,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ))
          ],
        ),
      ),
    );
  }
}
