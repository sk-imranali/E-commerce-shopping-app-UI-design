import 'package:ecommerce_shopping_app/screen/recovery_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'otp_screen.dart';

class ForgetPassword extends StatefulWidget {
  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
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
                  labelText: "Send Code",
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
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>RecoveryPassword()));

                    },
                    child: Text(
                      "Reset Password",
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
          SizedBox(height: 8,),
          Align(
              alignment:Alignment.center,
              child: Text("OR")),
              SizedBox(height: 8,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Text("Verify Using Number"),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>OtpScreen()));
              },
                  child: Text("Verify Using Number",
                style: TextStyle(color: Color(0xFFEf6969),
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
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
