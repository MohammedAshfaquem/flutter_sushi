import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quickalert/quickalert.dart';
import 'package:sushi/coupons/Couponspage.dart';
import 'package:sushi/coupons/KFCcoupon.dart';
import 'package:sushi/coupons/dominoscoupon.dart';
import 'package:sushi/coupons/mcdonaldscoupom.dart';
import 'package:sushi/coupons/starbuckscoupon.dart';

class Redeem extends StatefulWidget {
  const Redeem({super.key});

  @override
  State<Redeem> createState() => _RedeemState();
}

class _RedeemState extends State<Redeem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(251, 0, 0, 0),
        appBar: AppBar(
            backgroundColor:const Color.fromARGB(255, 0, 0, 0),
            foregroundColor: Colors.white,
            elevation: 0,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("My Coupons"),
              ],
            )),
        body: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            coupon(
                logo: "lib/images/mc.png",
                logoname: "\$ 10",
                logosub: "Mc Donalds",
                date: "Value until 01 February 2022",
                logoheight: 45,
                evdkka: mcdonald(),
                ),
            coupon(
              evdkka:kfcCoupon(),
              logo: "lib/images/kfc.png",
              logoname: "25% OFF",
              logosub: "KFC",
              date: "Value until 09 June 2022",
              logoheight: 15,
            ),
            coupon(
              evdkka:startbucks(),
                logo: "lib/images/star.png",
                logoname: "1 Free Coffee",
                logosub: "StarBucks",
                date: "Value until 14 November 2022",
                logoheight: 45),
            coupon(
              evdkka:Dominos(),
                logo: "lib/images/domi.png",
                logoname: "Pay 1 Take 2",
                logosub: "Dominos",
                date: "Value until 29 December 2022",
                logoheight: 45),
            SizedBox(
              height: 60,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.white)),
                  onPressed: () {
                    QuickAlert.show(context: context,type: QuickAlertType.warning,text: "Sorry ");
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 50, right: 50, top: 8, bottom: 8),
                    child: Text(
                      "Enter Your Redeem Code",
                      style: TextStyle(fontSize: 15, color: Colors.brown),
                    ),
                  )),
            )
          ],
        ));
  }

  void _show() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          elevation: 0,
          title: Center(
              child: Text(
            "☹",
            style: TextStyle(
                color: const Color.fromARGB(255, 191, 0, 0), fontSize: 90),
          )),
          content: Text(
            "Sorry, new coupons are not availble",
            style: TextStyle(
                color: const Color.fromARGB(255, 201, 22, 22), fontSize: 26),
          ),
          actions: [
            MaterialButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "OK",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        );
      },
    );
  }
}
