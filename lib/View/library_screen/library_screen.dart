import 'package:flutter/material.dart';
import 'package:spitify_clone/utils/color_constant/color_constant.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Library",
        style: TextStyle(color: ConstantColor.textWhite),
      ),
    );
  }
}
