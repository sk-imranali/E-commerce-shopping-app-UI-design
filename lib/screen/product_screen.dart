import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../widget/container_button.dart';
import '../widget/product_details_popup.dart';

class ProductScreen extends StatelessWidget {
  List<String> imageList = [
    "images/images (1).jpg",
    "images/images (2).jpg",
    "images/images (3).jpg",
    "images/images (4).jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Overview"),
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
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: FanCarouselImageSlider(
                  sliderHeight: 350,
                  autoPlay: true,
                  imagesLink: imageList,
                  isAssets: true,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Warm Zipper",
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w900,
                            fontSize: 25),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Hooded Jacket",
                        style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  Text(
                    "\$300.00",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Color(0xFFDB3022),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: RatingBar.builder(
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemSize: 25,
                  itemCount: 5,
                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
              ),
              SizedBox(height: 10,),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("Cool windy wether is on its way, Send him out\nthe door in a jacket to Warm\nZooper Hooded Jacket",
                style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.w500,
                  fontSize: 16
                ),
                ),
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Color(0x1F989797),
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: Center(
                      child: Icon(Icons.shopping_cart,
                      color: Color(0xFFDB3022),),
                    ),
                  ),
                  ProductDetails(),
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
