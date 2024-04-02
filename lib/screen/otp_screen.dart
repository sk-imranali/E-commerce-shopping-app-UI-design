
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'otp_verify_screen.dart';

class OtpScreen extends StatefulWidget {
  @override
  State<OtpScreen> createState() => _OtpScreenState();
}



class _OtpScreenState extends State<OtpScreen> {
  bool clrButton = false;
  TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Forgot Password",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text("Please enter your email address. You will receive a link to create or set a new password via email"),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _emailController,
                  onChanged: (val) {
                    if (val != "") {
                      setState(() {
                        clrButton = true;
                      });
                    }
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.numbers),
                    border: OutlineInputBorder(),
                    labelText: "Enter number",
                    //suffixIcon: IconButton(onPressed: (){},
                    suffix: InkWell(
                      onTap: () {
                        setState(() {
                          _emailController.clear();
                        });
                      },
                      child: Icon(
                        CupertinoIcons.multiply,
                        color: Color(0xFFDB3822),
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 50,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    ElevatedButton(

                      onPressed: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>OtpVerifyScreen()));

                      },
                      child: Text(
                        "Send Code",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                          maximumSize: Size.fromHeight(55),
                          minimumSize: Size(500, 50),
                          backgroundColor: Color(0xFFDB3022),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          )),
                    ),
                  ],
                ),

              ]
          ),
        ),
      ),
    );
  }
}

