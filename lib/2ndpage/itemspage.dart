import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Menupage extends StatelessWidget {
  final String menuimage;
  final String itemname;
  final String rate;
  final String rating;
  final double height;
  final double width;

  const Menupage({super.key, 
    required this.menuimage,
    required this.itemname,
    required this.rate,
    required this.rating, required this.height, required this.width,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 170.h,
            width: 190.w,
            child: Image.asset(
              menuimage,
              fit: BoxFit.fitWidth,
            ),
          ),
          
          Padding(
            padding: EdgeInsets.only(left: 10.w),
            child: Text(
              itemname,
              style: const TextStyle(fontWeight: FontWeight.w700,fontSize: 17),
            ),
          ),
           SizedBox(
            height: 7.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.w),
            child: Row(
              children: [
                Text(
                  "\$"+rate,
                  style: const TextStyle(color: Colors.black),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 70.w),
                  child: Icon(
                    Icons.star,
                    color: Color.fromARGB(237, 239, 218, 31),
                  ),
                ),
                Text(
                  rating,
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
