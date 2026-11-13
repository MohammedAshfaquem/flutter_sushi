import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Dominos extends StatelessWidget {
  const Dominos({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color.fromARGB(252, 165, 7, 7),
      body: Padding(
        padding:  EdgeInsets.only(left: 35.w, right: 35.w, top: 90.h),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(20)),
              height: 500.h,
            ),
            Positioned(
                top: 300.h,
                left: -19.w,
                child: CircleAvatar(
                    backgroundColor: Color.fromARGB(252, 165, 7, 7))),
            Positioned(
                top: 300.h,
                right: -19.w,
                child: CircleAvatar(
                    backgroundColor: Color.fromARGB(252, 165, 7, 7))),
            Padding(
              padding:  EdgeInsets.only(left: 10.w, top: 30.h, right: 10.w),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        "lib/images/domi.png",
                        height: 55.h,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Pay 1 Take 2",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "Dominos",
                            style: TextStyle(
                                fontSize: 19, fontWeight: FontWeight.w400),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Text(
                    "Get 25% at your next Dominos buy",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w900),
                  ),
                  SizedBox(
                    height: 15.w,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(left: 40.w, bottom: 19.h),
                        child: Icon(Icons.circle,
                            size: 7, color: Color.fromARGB(255, 116, 107, 107)),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Column(
                        children: [
                          Text(
                            " Redeemable at all Dominos \n restuarants in the CHINA ",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 40, bottom: 19),
                        child: Icon(Icons.circle,
                            size: 7, color: Color.fromARGB(255, 116, 107, 107)),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Column(
                        children: [
                          Text(
                            " Not valid with any other \n discounts and promotions. ",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 40.w,
                        ),
                        child: Icon(Icons.circle,
                            size: 7, color: Color.fromARGB(255, 116, 107, 107)),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Column(
                        children: [
                          Text(
                            " No cash value ",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 37.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 19.w, right: 19.w),
                    child: Divider(
                      thickness: 3.5,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Icon(
                    Icons.qr_code,
                    size: 90,
                  ),
                  SizedBox(height: 15.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                       IconButton(onPressed: (){},
                        icon:Icon(Icons.arrow_outward_rounded,size: 30,),color: Colors.red[900],),
                      Text("Valid until 03 March 2022",style: TextStyle(color: Colors.grey),),
                      IconButton(onPressed: (){},
                        icon:Icon(Icons.info_outline,size: 30,),color: Colors.red[900],)
                    
                    ],
                  ),
                  
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}