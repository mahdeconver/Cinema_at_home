import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:project2/Screen/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2)).then((value) {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => HomeScreen(),
      ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Be distinctive
            const TextInSplashScreen(
              text: "You alone\ncan appreciate your\naccomplishments",
            ),
            //icon
            const IconSplashScreen(
              image: "icon/distinction.png",
            ),

            Container(
              margin: EdgeInsets.only(top: 110),
              child: SpinKitFadingCube(
                color: Colors.yellow,
                size: 35.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class IconSplashScreen extends StatelessWidget {
  const IconSplashScreen({
    super.key,
    required this.image,
  });
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(
          left: MediaQuery.of(context).size.width / 3.5,
          top: 100,
        ),
        child: Image(
          image: AssetImage("$image"),
          width: 130,
        ));
  }
}

class TextInSplashScreen extends StatelessWidget {
  const TextInSplashScreen({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 60),
      padding: const EdgeInsets.only(left: 50),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 30,
        ),
      ),
    );
  }
}
