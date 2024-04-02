import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import 'login_screen.dart';

class OnbordingScreen extends StatelessWidget {
  final introkey = GlobalKey<IntroductionScreenState>();

  @override
  Widget build(BuildContext context) {
    final pageDecoration = PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.w700,
        ),
        bodyTextStyle: TextStyle(fontSize: 19),
        bodyPadding: EdgeInsets.fromLTRB(16, 0, 16, 16),
        pageColor: Colors.white,
        imagePadding: EdgeInsets.zero);
    return IntroductionScreen(
      key: introkey,
      globalBackgroundColor: Colors.white,
      pages: [
        PageViewModel(
          title: "Shop Now",
          body:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
          image: Image.asset(
            "images/shopping1.png",
            width: 200,
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Free Delivery",
          body:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
          image: Image.asset(
            "images/shopping2.png",
            width: 200,
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
            title: "Shop Now",
            body: "Lorem Ipsum is simply dummy text of the"
                " printing and typesetting industry. "
                "Lorem Ipsum has been the industry's "
                "standard dummy text ever since the 1500s",
            image: Image.asset(
              "images/shopping3.png",
              width: 200,
            ),
            decoration: pageDecoration,
            footer: Padding(
              padding: EdgeInsets.only(left: 15, right: 15, top: 50),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                child: Text(
                  "let's Shop",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                style: ElevatedButton.styleFrom(
                    maximumSize: Size.fromHeight(55),
                    backgroundColor: Color(0xFFEf6969),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
              ),
            )),
      ],
      showSkipButton: false,
      showDoneButton: false,
      showBackButton: true,
      back: Text(
        "back",
        style: TextStyle(fontWeight: FontWeight.w600, color: Color(0xFFEF6969)),
      ),
      next: Text(
        "Next",
        style: TextStyle(fontWeight: FontWeight.w600, color: Color(0xFFEF6969)),
      ),
      done: Text(
        "Done",
        style: TextStyle(fontWeight: FontWeight.w600, color: Color(0xFFEF6969)),
      ),
      skip: Text(
        "Skip",
        style: TextStyle(fontWeight: FontWeight.w600, color: Color(0xFFEF6969)),
      ),
      onDone: () {},
      onSkip: () {},
      dotsDecorator: DotsDecorator(
        size: Size.square(10),
        activeSize: Size(20, 10),
        activeColor: Color(0xFFEF6969),
        color: Colors.black26,
        spacing: EdgeInsets.symmetric(horizontal: 3),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
    );
  }
}
