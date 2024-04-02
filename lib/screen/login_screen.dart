
import 'package:ecommerce_shopping_app/screen/recovery_screen.dart';
import 'package:ecommerce_shopping_app/screen/sign_up.dart';
import 'package:ecommerce_shopping_app/screen/ui/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'forget_password.dart';
import 'navigration_screen.dart';
import 'otp_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "images/shopping1.png",
                width: 200,
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        fillColor: Color(0xFFEf6969),
                        labelText: "Enter Email",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: Icon(Icons.remove_red_eye),
                        // fillColor: Color(0xFFEf6969),
                        labelText: "Enter Password",
                        labelStyle: TextStyle(
                            //color: Color(0xFFEf6969),
                            ),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => OtpScreen()));
                            },
                            child: Text(
                              "Forget Password",
                              style: TextStyle(
                                  color: Color(0xFFEf6969),
                                  fontWeight: FontWeight.bold),
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NavigationScreen()));
                      },
                      child: Text(
                        "Log In",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      style: ElevatedButton.styleFrom(
                        maximumSize: Size.fromHeight(55),
                        minimumSize: Size(500, 50),
                        backgroundColor: Color(0xFFEf6969),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    //Text("OR"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't Have Account?"),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignUp()));
                            },
                            child: Text(
                              "sign up",
                              style: TextStyle(
                                color: Color(0xFFEf6969),
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
