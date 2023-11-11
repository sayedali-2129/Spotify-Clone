import 'package:flutter/material.dart';

import 'package:spitify_clone/View/widgets/bottom_navigation.dart';
import 'package:spitify_clone/utils/color_constant/color_constant.dart';
import 'package:spitify_clone/utils/image_constant/image_constant.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final userKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    TextEditingController usernameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    String username = "username";
    String password = "password";
    return Scaffold(
      backgroundColor: ConstantColor.bgBlackColor,
      body: Center(
        child: Form(
          key: userKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(ConstantImage.spotifyLogoWhite))),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  textAlign: TextAlign.center,
                  "Millions of songs\nFree on Spotify.",
                  style: TextStyle(
                      color: ConstantColor.textWhite,
                      fontSize: 32,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Email or username",
                        style: TextStyle(
                            color: ConstantColor.textWhite,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextFormField(
                        validator: (value) {
                          if (usernameController.text != username) {
                            return "Incorrect username";
                          } else if (usernameController.text.isEmpty) {
                            return "Enter username";
                          }
                          return null;
                        },
                        controller: usernameController,
                        cursorColor: ConstantColor.textWhite,
                        style: TextStyle(color: ConstantColor.textWhite),
                        decoration: InputDecoration(
                            focusColor: ConstantColor.textWhite,
                            border: InputBorder.none,
                            filled: true,
                            fillColor: ConstantColor.containerGrey),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Password",
                        style: TextStyle(
                            color: ConstantColor.textWhite,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextFormField(
                        validator: (value) {
                          if (passwordController.text != password) {
                            return "Incorrect password";
                          } else if (passwordController.text.isEmpty) {
                            return "Enter Password";
                          }
                          return null;
                        },
                        controller: passwordController,
                        obscureText: true,
                        cursorColor: ConstantColor.textWhite,
                        style: TextStyle(color: ConstantColor.textWhite),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            filled: true,
                            fillColor: ConstantColor.containerGrey),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: InkWell(
                    onTap: () {
                      if (usernameController.text == username &&
                          passwordController.text == password) {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BottomNavigationWidget(),
                            ));
                        usernameController.clear();
                        passwordController.clear();
                      } else if (userKey.currentState!.validate()) {}
                    },
                    child: Container(
                      height: 60,
                      width: 130,
                      decoration: BoxDecoration(
                        color: ConstantColor.themeGreen,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(
                        child: Text(
                          "Log in",
                          style: TextStyle(
                              color: ConstantColor.textWhite,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
