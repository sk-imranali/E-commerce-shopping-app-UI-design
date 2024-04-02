import 'dart:async';

import 'package:ecommerce_shopping_app/screen/login_screen.dart';
import 'package:ecommerce_shopping_app/screen/product_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'navigration_screen.dart';
import 'onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => LoginScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
              image: AssetImage(
                "images/splashimg.jpg",
              ),
              fit: BoxFit.cover,
              opacity: 0.4,
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.shopping_cart,
              size: 250,
              color: Color.fromRGBO(255, 238, 80, 80),
            ),
            Text(
              "IP SHOP",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            )
          ],
        ),
      ),
    );
  }
}
