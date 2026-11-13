import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Fastfoods extends StatelessWidget {
  const Fastfoods({super.key, required this.menuimage, required this.itemname, required this.rate, required this.rating, required this.height, required this.width});
  final String menuimage;
  final String itemname;
  final String rate;
  final String rating;
  final double height;
  final double width;

  

  @override
  Widget build(BuildContext context) {
    return  Container(
            height: 170.h,
            width: 190.w,
            child: Image.asset(
              menuimage,
              fit: BoxFit.fitWidth,
            ),
          );
          
         
      
  }
}