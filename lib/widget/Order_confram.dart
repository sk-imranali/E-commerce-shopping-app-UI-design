import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'container_button.dart';

class OrderConfirm extends StatelessWidget {
  const OrderConfirm({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(children: [
            Image.asset(
              "images/success.png",
              height: 250,
            ),
            Text(
              "Success!",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            Text("You orde will be delivered soon!",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400)),
            Text(
              "Thank you! for choosing our app",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
            ),
          ]
          ),
           SizedBox(height: 30,),
           Padding(
             padding: EdgeInsets.all(20),
             child: ContainerButtonModel(itext: "Continue Shopping",

              ContainerWidth:MediaQuery.of(context).size.width,
              bgColor: Color(0xFFDB3022),
                       ),
           ),
        ],
      ),
    );
  }
}
