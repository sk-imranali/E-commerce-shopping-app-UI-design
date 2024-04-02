import 'package:ecommerce_shopping_app/widget/container_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widget/payment_method_screen.dart';

class CartScreen extends StatelessWidget {
  List imageList = [
    "images/images (1).jpg",
    "images/images (2).jpg",
    "images/images (3).jpg",
    "images/images (4).jpg",
  ];
  List productTitle = ["Warm Zipper", "woold", "Zipper Win", "Child win"];
  List prices = [
    "\$300",
    "\$650",
    "\$350",
    "\$256",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
        leading: BackButton(),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              Container(
                child: ListView.builder(
                    itemCount: imageList.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.symmetric(vertical: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Checkbox(
                              splashRadius: 15,
                              activeColor: Color(0xFFDB3822),
                              value: true,
                              onChanged: (val) {},
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                imageList[index],
                                height: 70,
                                width: 70,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  productTitle[index],
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w900,
                                      fontSize: 18),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  "Hooded jacket",
                                  style: TextStyle(
                                      color: Colors.black26, fontSize: 16),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  prices[index],
                                  style: TextStyle(
                                    color: Color(0xFFDB3822),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w900,
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: Row(
                                children: [
                                  Icon(
                                    CupertinoIcons.minus,
                                    color: Colors.green,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    "1",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Icon(
                                    CupertinoIcons.plus,
                                    color: Color(0xFFDB3822),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Select All"),
                  Checkbox(
                      splashRadius: 20,
                      activeColor: Color(0xFFDB3822),
                      value: false,
                      onChanged: (val) {})
                ],
              ),
              Divider(
                height: 20,
                thickness: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total Payment",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                  ),
                  Text(
                    "\$300.00",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18,color: Color(0xFFDB3022)),
                  ),
                ],
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>PaymentMethod()));

                },
                child: ContainerButtonModel(
                  itext: "CheckOut",
                  ContainerWidth:MediaQuery.of(context).size.width,
                  bgColor: Color(0xFFDB3022),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
