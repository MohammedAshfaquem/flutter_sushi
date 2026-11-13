import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:sushi/2ndpage/Home_page.dart';

class Screenpage extends StatelessWidget {
  const Screenpage({super.key, this.names = "Michel"});
  final String names;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 810.h,
            color:  Color.fromARGB(255, 0, 0, 0),
          ),
          Container(
              height: 550.h,
              width: 500.w,
              child: Image.asset(
                "lib/images/screen.jpg",
                fit: BoxFit.fill,
              )),
          Positioned(
            bottom: 60.h,
            left: 70.w,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>Homepage(name: names),
                    ));
              },
              child: FadeInDown(
                duration: Duration(milliseconds: 1000),
                delay: Duration(milliseconds: 800),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white),
                  height: 60.h,
                  width: 270.w,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 30.w),
                        child:
                            Lottie.asset("lib/animations/arrow.json", height: 33),
                      ),
                      SizedBox(width: 30.h,),
                      Text(
                        "Get Started",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w900),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
              bottom: 180.h,
              left: 20.w,
              child: FadeInUp(
                duration: Duration(milliseconds: 1000),
                delay: Duration(milliseconds: 200),
                child: Text(
                  " Are \n You \n Hungry?",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 55,
                      fontWeight: FontWeight.w900),
                ),
              )),
        ],
      ),
    );
  }
}
