import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:sushi/cart/cartcontroller.dart';

class LastPage extends StatelessWidget {
  const LastPage({super.key,});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50.h,
            ),
            Lottie.network(
                "https://lottie.host/5900fe17-9e5f-46f4-98ba-fed460b26eed/Q1KtxVvMQ0.json",
                height: 200.h),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                width: 700.w,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade800),
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: EdgeInsets.only(left: 30.w, top: 20.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Here's Your Receipt.",
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(DateTime.now().toString(),
                          style: TextStyle(color: Colors.white)),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text("- - - - - -",
                          style: TextStyle(color: Colors.white)),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Itemname:",  style: TextStyle(color: Colors.white)),
                          Consumer<Cartcontroller>(
                            builder: (context, value, child) => Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:List.generate(value.cart.length, (index) =>Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 3),
                                child: Text(value.cart[index].name,style: TextStyle(
                                
                                color: Colors.white)),
                              )),),
                          )
                        ],
                      ),
                      Text("- - - - - -",
                          style: TextStyle(color: Colors.white, fontSize: 17)),
                      Consumer<Cartcontroller>(
                        builder: (context, value, child) => Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Total items:" + value.cart.length.toString(),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16)),
                            Text("Total price:" + value.totalamount(),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 80.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color.fromARGB(255, 49, 42, 42)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: 0,
                    ),
                    Icon(
                      Icons.person_rounded,
                      color: Colors.white,
                      size: 35,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Aslam",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 19,
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            width: 150,
                          ),
                          Text("Driver",
                              style: TextStyle(color: Colors.grey.shade300))
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.message_rounded, color: Colors.blueGrey),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.call_rounded,
                          color: Color.fromARGB(255, 12, 211, 32),
                        ))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
