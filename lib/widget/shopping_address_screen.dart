import 'package:ecommerce_shopping_app/widget/container_button.dart';
import 'package:flutter/material.dart';

import 'OrderConfirmScreen.dart';

class ShoppingAddressScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Shipping Address"),
        leading: BackButton(),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Full Name"),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Full Name"),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Mobile Number"),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "City"),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "State/Region"),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Zip Code(Postal Code)"),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Country"),
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => OrderComfirm()));
                },
                child: ContainerButtonModel(
                  itext: "Save Address",
                  ContainerWidth: MediaQuery.of(context).size.width,
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
