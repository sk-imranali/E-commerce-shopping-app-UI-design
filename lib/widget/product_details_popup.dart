import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screen/ui/cart.dart';
import 'container_button.dart';

class ProductDetails extends StatelessWidget {
  final isStyle = TextStyle(
    color: Colors.black87,
    fontWeight: FontWeight.bold,
    fontSize: 18,
  );
  List<Color> clrs = [
    Colors.red,
    Colors.green,
    Colors.indigo,
    Colors.amber,
  ];

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          backgroundColor: Colors.transparent,
          context: context,
          builder: (context) => Container(
            height: MediaQuery.of(context).size.height / 2.1,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Size",
                            style: isStyle,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Color",
                            style: isStyle,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Total",
                            style: isStyle,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "S",
                                style: isStyle,
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Text(
                                "M",
                                style: isStyle,
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Text(
                                "L",
                                style: isStyle,
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Text(
                                "XL",
                                style: isStyle,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            child: Row(
                              children: [
                                for (var i = 0; i < 4; i++)
                                  Container(
                                    margin: EdgeInsets.symmetric(horizontal: 5),
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        color: clrs[i],
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                  ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "-",
                                style: isStyle,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "1",
                                style: isStyle,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "+",
                                style: isStyle,
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total Payment",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Text(
                            "\$300.00",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFDB3822)),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context)=>CartScreen()));
                        },
                        child: Center(
                          child: ContainerButtonModel(
                            itext: "Checkout",
                            ContainerWidth: MediaQuery.of(context).size.width / 1.5,
                            bgColor: Color(0xFFDB3022),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
      child: ContainerButtonModel(
        ContainerWidth: MediaQuery.of(context).size.width / 1.5,
        itext: "Buy Now",
        bgColor: Color(0xFFDB3022),
      ),
    );
  }
}
