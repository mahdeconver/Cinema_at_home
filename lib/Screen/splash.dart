import 'package:flutter/material.dart';
import 'package:project2/Screen/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // @override
  // void initState() {
  //   Future.delayed(Duration(seconds: 3)).then((value) {
  //     Navigator.of(context).pushReplacement(MaterialPageRoute(
  //       builder: (context) => HomeScreen(),
  //     ));
  //   });
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
              height: 80,
              child: const Text(
                "BAR & RESTARAUNT",
                style: TextStyle(
                  textBaseline: TextBaseline.ideographic,
                  color: Color(0xfff0d17f),
                  fontSize: 13,
                ),
              ),
            ),
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: 50,
                  ),
                  child: const Text(
                    "Under\n \t\tthe\n Golden \n\t\t\t\t star",
                    style: TextStyle(
                      textBaseline: TextBaseline.ideographic,
                      color: Colors.white,
                      fontSize: 80,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width/3, vertical: 200),
                    child: Icon(
                  Icons.star_half_rounded,
                  color: Colors.yellow,
                  size: 100,
                ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
