import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class Trackorder extends StatefulWidget {
  const Trackorder({super.key});

  @override
  State<Trackorder> createState() => _TrackorderState();
}

class _TrackorderState extends State<Trackorder> {
  @override

   void show(){
    showDialog(context: context, builder: (context) {
      return AlertDialog(actions: [Padding(
        padding: const EdgeInsets.only(bottom: 40,right: 80),
        child: Text("ORDER CONIREMED",style: TextStyle(fontWeight: FontWeight.w700),),
      ),
      ],
        content: Lottie.asset("lib/animations/VERIFIED.json",height: 100,),);
    },);
   }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: Text("Trach Your Order",style: TextStyle(color: Colors.white),),centerTitle: true,
      backgroundColor: Color.fromARGB(255, 0, 0, 0),),
      body: Stack(
        children: [
          Padding(
            padding:  EdgeInsets.only(top: 386.h,bottom: 152.h),
            child: VerticalDivider(thickness: 1,color: Colors
            .grey[800],width: 120.w),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                  child: Padding(
                padding:  EdgeInsets.only(bottom: 30.h, right: 30.w),
                child: Lottie.asset("lib/animations/yellow delivary boy.json",
                    height: 330.h),
              )),
              Padding(
                padding: EdgeInsets.only(left: 50.w),
                child: Row(
                  children: [
                    Icon(
                      Icons.circle,
                      color: Colors.red,
                      size: 20,
                    ),
                    SizedBox(
                      width: 40.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Order recieved",
                          style:
                              TextStyle(fontSize: 15, fontWeight: FontWeight.w800),
                        ),
                        Text(
                          "11.30 am, May 14 2022",
                          style:
                              TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 50.h,),
              Padding(
                padding:  EdgeInsets.only(left: 50.w),
                child: Row(
                  children: [
                    Icon(
                      Icons.circle,
                      color: Colors.red,
                      size: 20,
                    ),
                    SizedBox(
                      width: 40.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "On The Way",
                              style:
                                  TextStyle(fontSize: 15, fontWeight: FontWeight.w800),
                            ),
                            SizedBox(width: 10.w,),
                         ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                           child: Container(
                            height: 24.h,
                            width: 80.w,
                            color: Color.fromARGB(255, 255, 183, 0),
                            child: Center(child: Text("Tracking",style: TextStyle(color: Colors.white),)),),
                         )
                          ],
                        ),
                        Text(
                          "12.00 am, May 14 2022",
                          style:
                              TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                      ],
                    )
                  ],
                ),
              ),
                        SizedBox(height: 50.h,),

              Padding(
                padding: EdgeInsets.only(left: 50.w),
                child: Row(
                  children: [
                    Icon(
                      Icons.circle_outlined,
                      color: Colors.red,
                      size: 20,
                    ),
                    SizedBox(
                      width: 40.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Delivered",
                          style:
                              TextStyle(fontSize: 15, fontWeight: FontWeight.w800),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 40.h,),
              GestureDetector(
                onTap: () {
                  show();
                },
                child: Padding(
                  padding: EdgeInsets.only(left: 50.w,right: 50.w),
                  child: Container(
                    height: 50.h,
                    decoration: BoxDecoration(color: Color.fromARGB(255, 0, 0, 0),borderRadius: BorderRadius.circular(30)),
                  child: Center(child: Text("CONFIRM  ORDER",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700),)),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
