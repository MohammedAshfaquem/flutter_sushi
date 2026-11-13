import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sushi/Drawer/customerservice.dart';
import 'package:sushi/Drawer/refersorryimage.dart';

class helpcenter extends StatelessWidget {
  const helpcenter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        elevation: 0,
        centerTitle: true,
        foregroundColor: Colors.white,
        title: Text("Invite Your Freinds",style: TextStyle(color: Colors.white),),
      ),
      body: Column(
        children: [
          Lottie.asset("lib/animations/invite freind.json",
              height: 330, width: 600),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "INVITE & EARN \$15",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Invite your freinds to join and get the rewared as \n      soon as they start using their Mastercard",
                style: TextStyle(
                    color: Colors.grey[800], fontWeight: FontWeight.w600),
              )
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
                border:
                    Border.all(color: const Color.fromARGB(255, 156, 12, 12)),
                borderRadius: BorderRadius.circular(10)),
            height: 100,
            width: 350,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "\$30",
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "2 Invitation pending",
                      style: TextStyle(fontSize: 15),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "\$60",
                      style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromARGB(255, 156, 12, 12)),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "already wins",
                      style: TextStyle(fontSize: 15),
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) =>sorry(),));
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    color: const Color.fromARGB(255, 156, 12, 12)),
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.ios_share_outlined,
                      color: Colors.white,
                      size: 20,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "SHARE",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18, right: 18, bottom: 8),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Customerservice(),));
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    border:
                        Border.all(color: const Color.fromARGB(255, 156, 12, 12)),
                    color: Color.fromARGB(255, 255, 255, 255)),
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "INVITE VIA EMAIL",
                      style: TextStyle(
                          color: const Color.fromARGB(255, 156, 12, 12),
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
