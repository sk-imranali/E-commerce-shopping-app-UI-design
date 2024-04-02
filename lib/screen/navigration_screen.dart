
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:ecommerce_shopping_app/screen/ui/cart.dart';
import 'package:ecommerce_shopping_app/screen/ui/faviorate.dart';
import 'package:ecommerce_shopping_app/screen/ui/home_screen.dart';
import 'package:ecommerce_shopping_app/screen/ui/profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int pageIndex = 0;
  List<Widget> page = [
    HomeScreen(),
    CartScreen(),
    FavoritesScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: pageIndex,
        children: page,
      ),
      floatingActionButton: SafeArea(

        child: FloatingActionButton(


          backgroundColor: Color(0xFFDB3022),
          onPressed: (){},
          child: Icon(Icons.qr_code,color: Colors.white,

          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar:AnimatedBottomNavigationBar(
        //backgroundColor: Colors.red,
        icons:[
          CupertinoIcons.home,
          CupertinoIcons.cart,
          CupertinoIcons.heart,
          CupertinoIcons.profile_circled,
        ],
        inactiveColor:Colors.black.withOpacity(0.5),
        activeColor: Color(0xFFDB3022),
        gapLocation:GapLocation.center,
        activeIndex: pageIndex,
        notchSmoothness: NotchSmoothness.softEdge,
        leftCornerRadius: 10,
        iconSize: 25,
        rightCornerRadius: 10,
        elevation: 0,
        onTap: (index){
          setState(() {
            pageIndex=index;
          });
        },

      )

    );
  }


}

