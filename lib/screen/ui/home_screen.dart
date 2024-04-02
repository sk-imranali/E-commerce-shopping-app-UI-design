import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../product_screen.dart';

class HomeScreen extends StatelessWidget {
  List<String> tabs = ["All", "Category", "Top", "Recommended"];
  List<String> imageList = [
    "images/images (1).jpg",
    "images/images (2).jpg",
    "images/images (3).jpg",
    "images/images (4).jpg",
  ];
  List productTitles = ["Warm Zipper", "Knitted Woo!", "Child Win", "jacket"];
  List prices = [
    "\$300",
    "\$650",
    "\$250",
    "\$220",
  ];
  List reviews = [
    "1025",
    "120",
    "54",
    "545",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 15, right: 15, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    height: 50,
                    width: MediaQuery.of(context).size.width / 1.5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black12.withOpacity(0.05),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 1,
                              spreadRadius: 1)
                        ]),
                    child: TextFormField(
                      decoration: InputDecoration(
                          label: Text("Find your product"),
                          labelStyle: TextStyle(color: Colors.grey),
                          border: InputBorder.none,
                          icon: Icon(
                            Icons.search,
                            color: Color(0xFFDB3022),
                          )),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width / 6,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black12.withOpacity(0.05),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            blurRadius: 1,
                            spreadRadius: 1)
                      ],
                    ),
                    child: Icon(Icons.notifications_active_outlined,
                        color: Color(0xFFDB3022)),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFFFFF0DD),
                ),
                child: Image.asset(
                  "images/caver.png",
                  height: 200,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 50,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: tabs.length,
                    itemBuilder: (context, index) {
                      return FittedBox(
                        child: Container(
                          height: 40,
                          margin: EdgeInsets.all(8),
                          padding: EdgeInsets.only(left: 15, right: 15),
                          decoration: BoxDecoration(
                            color: Colors.black12.withOpacity(0.05),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: FittedBox(
                              child: Text(
                                tabs[index],
                                style: TextStyle(
                                  color: Colors.black38,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(height: 20),
              Container(
                height: 280,
                child: ListView.builder(
                    itemCount: imageList.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(right: 5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 180,
                              width: 150,
                              child: Stack(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  ProductScreen()));
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        imageList[index],
                                        fit: BoxFit.cover,
                                        height: 180,
                                        width: 150,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                      right: 10,
                                      top: 10,
                                      child: Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: Center(
                                          child: Icon(
                                            Icons.favorite,
                                            color: Color(0xFFDB3022),
                                          ),
                                        ),
                                      ))
                                ],
                              ),
                            ),
                            //SizedBox(height: 10,),
                            Text(
                              productTitles[index],
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),

                            //SizedBox(height: 10,),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 22,
                                ),
                                Text(
                                  '(' + reviews[index] + ')',
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  prices[index],
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFDB3022),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    }),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Newest Product",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GridView.builder(
                itemCount: productTitles.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.6,
                  crossAxisSpacing: 2,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(right: 5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 180,
                          width: 150,
                          child: Stack(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ProductScreen()));
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    imageList[index],
                                    fit: BoxFit.cover,
                                    height: 180,
                                    width: 150,
                                  ),
                                ),
                              ),
                              Positioned(
                                  right: 10,
                                  top: 10,
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Center(
                                      child: Icon(
                                        Icons.favorite,
                                        color: Color(0xFFDB3022),
                                      ),
                                    ),
                                  ))
                            ],
                          ),
                        ),
                        //SizedBox(height: 10,),
                        Text(
                          productTitles[index],
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),

                        //SizedBox(height: 10,),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 22,
                            ),
                            Text(
                              '(' + reviews[index] + ')',
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              prices[index],
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFDB3022),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    ));
  }
}
