import 'package:ecommerce_shopping_app/widget/container_button.dart';
import 'package:ecommerce_shopping_app/widget/shopping_address_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaymentMethod extends StatefulWidget {
  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  int _type = 1;

  void _handleRtio(Object? e) => setState(() {
        _type = e as int;
      });
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text("Payment Method"),
        leading: BackButton(),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Container(
                  width: size.width,
                  height: 55,
                  decoration: BoxDecoration(
                      border: _type == 1
                          ? Border.all(width: 1, color: Colors.black)
                          : Border.all(width: 0.3, color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.transparent),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Radio(
                                value: 1,
                                groupValue: _type,
                                onChanged: _handleRtio,
                                activeColor: Color(0xFFDB3022),
                              ),
                              Text("Amazon Pay",
                                  style: _type == 1
                                      ? TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                        )
                                      : TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey)),
                            ],
                          ),
                          Image.asset(
                            "images/download.png",
                            width: 70,
                            height: 70,
                            fit: BoxFit.cover,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: size.width,
                  height: 55,
                  decoration: BoxDecoration(
                      border: _type == 2
                          ? Border.all(width: 1, color: Colors.black)
                          : Border.all(width: 0.3, color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.transparent),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Radio(
                                value: 2,
                                groupValue: _type,
                                onChanged: _handleRtio,
                                activeColor: Color(0xFFDB3022),
                              ),
                              Text("Credit Card",
                                  style: _type == 2
                                      ? TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                        )
                                      : TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey)),
                            ],
                          ),
                          Image.asset(
                            "images/images (1).png",
                            width: 70,
                            height: 70,
                            fit: BoxFit.cover,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: size.width,
                  height: 55,
                  decoration: BoxDecoration(
                      border: _type == 3
                          ? Border.all(width: 1, color: Colors.black)
                          : Border.all(width: 0.3, color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.transparent),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Radio(
                                value: 3,
                                groupValue: _type,
                                onChanged: _handleRtio,
                                activeColor: Color(0xFFDB3022),
                              ),
                              Text("Credit Card",
                                  style: _type == 3
                                      ? TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  )
                                      : TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey)),
                            ],
                          ),
                          Image.asset(
                            "images/mastercart.png",

                          height: 30,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 100,),
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
                SizedBox(height: 15,),
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ShoppingAddressScreen()));
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
