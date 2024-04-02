import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContainerButtonModel extends StatelessWidget {
   final Color? bgColor;
   final double? ContainerWidth;
   final String itext;

  const ContainerButtonModel({super.key, this.bgColor, this.ContainerWidth, required this.itext});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: ContainerWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: bgColor,
      ),
      child: Center(
        child: Text(
          itext,
          style: TextStyle(
              color: Colors.white70,
              fontWeight: FontWeight.bold,
              fontSize: 18),
        ),
      ),
    );
  }
}
