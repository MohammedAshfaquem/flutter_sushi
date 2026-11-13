import 'package:flutter/material.dart';

class kfcCoupon extends StatelessWidget {
  const kfcCoupon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(252, 165, 7, 7),
      body: Padding(
        padding: const EdgeInsets.only(left: 35, right: 35, top: 90),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(20)),
              height: 500,
            ),
            Positioned(
                top: 300,
                left: -19,
                child: CircleAvatar(
                    backgroundColor: Color.fromARGB(252, 165, 7, 7))),
            Positioned(
                top: 300,
                right: -19,
                child: CircleAvatar(
                    backgroundColor: Color.fromARGB(252, 165, 7, 7))),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 30, right: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        "lib/images/kfc.png",
                        height: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "25% OFF",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "KFC",
                            style: TextStyle(
                                fontSize: 19, fontWeight: FontWeight.w400),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Get 25% at your next KFC buy",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 40, bottom: 19),
                        child: Icon(Icons.circle,
                            size: 7, color: Color.fromARGB(255, 116, 107, 107)),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Text(
                            " Redeemable at all KFC \n restuarants in the UK ",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 40, bottom: 19),
                        child: Icon(Icons.circle,
                            size: 7, color: Color.fromARGB(255, 116, 107, 107)),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Text(
                            " Not valid with any other \n discounts and promotions. ",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 40,
                        ),
                        child: Icon(Icons.circle,
                            size: 7, color: Color.fromARGB(255, 116, 107, 107)),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Text(
                            " No cash value ",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 37,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 19, right: 19),
                    child: Divider(
                      thickness: 3.5,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Icon(
                    Icons.qr_code,
                    size: 90,
                  ),
                  SizedBox(height: 10,),
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
