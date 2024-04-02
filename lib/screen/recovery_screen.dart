import 'package:ecommerce_shopping_app/screen/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecoveryPassword extends StatefulWidget {
  @override
  State<RecoveryPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<RecoveryPassword> {
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
                  labelText: "Reset Code",
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
                height: 10,
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
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.remove_red_eye),
                  // fillColor: Color(0xFFEf6969),
                  labelText: "Confirm Password",
                  labelStyle: TextStyle(
                    //color: Color(0xFFEf6969),
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
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
        ),
      ),
    );
  }
}
