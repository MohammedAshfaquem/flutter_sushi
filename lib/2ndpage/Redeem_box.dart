import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sushi/button/button.dart';
import 'package:sushi/coupons/Couponcard.dart';

class Redeem_box extends StatelessWidget {
  const Redeem_box({super.key});

  @override
  Widget build(BuildContext context) {
    return  Stack(children: [
       FadeInUp(
        duration: Duration(milliseconds: 100),
        child: Padding(
          padding: const EdgeInsets.only(right: 15),
          child: Container(
            decoration: BoxDecoration(
                color:Colors.black,
                borderRadius: BorderRadius.circular(20)),
            height: 150.h,
            width: 360,
            child:ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset("lib/images/sasi.jpg",fit: BoxFit.cover,),)
          ),
        ),
      ),
      Positioned(
        right: 50,
        top: 50,

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Discount 50%",style: TextStyle(
              fontSize: 23,
              color: Colors.white,fontWeight: FontWeight.w400),),
              Text("learn more.....",style: TextStyle(
                fontSize: 15,
                color: Colors.grey),)
          ],
        ))
    ]
    );
  }
}