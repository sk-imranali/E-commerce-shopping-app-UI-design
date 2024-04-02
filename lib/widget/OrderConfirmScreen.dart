import 'package:ecommerce_shopping_app/widget/payment_method_screen.dart';
import 'package:ecommerce_shopping_app/widget/shopping_address_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Order_confram.dart';
import 'container_button.dart';

class OrderComfirm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Confirm Order"),
        leading: BackButton(),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Shipping Address",
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  width: MediaQuery.of(context).size.width,
                  height: 110,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 4,
                          spreadRadius: 2,
                        )
                      ]),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Dear Pro",
                              style: TextStyle(fontSize: 16),
                            ),
                            TextButton(
                                onPressed: () {

                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ShoppingAddressScreen()));
                                },
                                child: Text(
                                  "Change",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Color(0xFFDB3022),
                                  ),
                                )),
                          ],
                        ),
                        Text(
                          "Neworder",
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          "Chino Hills USA",
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Payment Method",
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                        onPressed: () {

                          Navigator.push(context,MaterialPageRoute(builder: (context)=>PaymentMethod()));
                        },
                        child: Text(
                          "Change",
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFFDB3022),
                          ),
                        )),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 80,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 4,
                                spreadRadius: 2)
                          ]),
                      child: Image.asset(
                        "images/mastercart.png",
                        height: 20,
                        width: 20,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text("**** **** **** 2256"),
                  ],
                ),
                Text(
                  "Delivery Method",
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      height: 60,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 4,
                                spreadRadius: 2)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            "images/amazonpay.png",
                            height: 40,

                          ),
                          Text("2-7 Days")
                        ],
                      ),
                    ),
                    SizedBox(width: 15,),
                    Container(
                      height: 60,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 4,
                                spreadRadius: 2)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("Home Delivery",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Colors.indigo),),

                          Text("2-7 Days")
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Sub-Total",
                      style: TextStyle(fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey
                      ),
                    ),
                    Text("\$300.00",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Shoping Fee",
                      style: TextStyle(fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey
                      ),
                    ),
                    Text("\$50.00",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400
                      ),
                    )
                  ],
                ),
                Divider(height: 30,color: Colors.black,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Total Payment",
                      style: TextStyle(fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Colors.black
                      ),
                    ),
                    Text("\$320.00",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Colors.redAccent
                      ),
                    )
                  ],
                ),
                SizedBox(height: 50,),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>OrderConfirm()));
                  },
                  child: ContainerButtonModel(itext: "Confirm Payment",

                    ContainerWidth:MediaQuery.of(context).size.width,
                    bgColor: Color(0xFFDB3022),
                  ),
                )


              ],
            ),
          ),
        ),
      ),
    );
  }
}
