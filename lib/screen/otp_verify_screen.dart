import 'package:ecommerce_shopping_app/screen/recovery_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sms_otp_auto_verify/sms_otp_auto_verify.dart';

class OtpVerifyScreen extends StatefulWidget {
  const OtpVerifyScreen({super.key});

  @override
  State<OtpVerifyScreen> createState() => _OtpVerifyScreenState();
}

class _OtpVerifyScreenState extends State<OtpVerifyScreen> {
  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      border: Border.all(color: Theme.of(context).primaryColor),
      borderRadius: BorderRadius.circular(15.0),
    );
  }

  TextEditingController textEditingController = new TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.transparent,
       foregroundColor: Colors.black,
       elevation: 0,
     ),
      body: SingleChildScrollView(
        child:Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: Text("Enter OTP",style: TextStyle(fontSize: 22,
                  fontWeight: FontWeight.bold,color: Colors.black),)),

              SizedBox(height: 40,),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text("Enter the OTP we have sent you to your Number")),
              SizedBox(height: 20,),
              TextFieldPin(
                  textController: textEditingController,
                  autoFocus: false ,
                  codeLength: 4,
                  alignment: MainAxisAlignment.center,
                  defaultBoxSize: 55.0,
                  margin: 10,
                  selectedBoxSize: 46.0,
                  textStyle: TextStyle(fontSize: 16),
                  defaultDecoration: _pinPutDecoration.copyWith(
                      border: Border.all(
                          color: Colors.grey
                              .withOpacity(0.6))),
                 selectedDecoration: _pinPutDecoration,
                  onChange: (code) {
                    
                      setState(() {

                      });

                  }
                  ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>RecoveryPassword()));
                },
                child: Text(
                  "Verify",
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
        ),
      ),
    );
  }
}
