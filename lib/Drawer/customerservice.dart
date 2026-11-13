import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sushi/Drawer/profilpage.dart';

class Customerservice extends StatelessWidget {
  const Customerservice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(212, 0, 0, 0),
        foregroundColor: Colors.white,
        title: Text("Contact us",style: TextStyle(color: Colors.white),),
        actions: [IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Profilepage(),));
        }, icon:Icon(Icons.person_2_outlined,size: 29,)),],
      ),
      body: Column(
        children: [
          Lottie.asset("lib/animations/cs.json", height: 240),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(255, 0, 0, 0), width: 3),
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(213, 171, 15, 15)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 13),
                  child: Column(
                    children: [
                      Icon(
                        Icons.call,
                        color: Colors.white,
                        size: 30,
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        "Call us",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
                height: 80,
                width: 80,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(255, 0, 0, 0), width: 3),
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(213, 171, 15, 15)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 13),
                  child: Column(
                    children: [
                      Icon(
                        Icons.email_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        "Email us",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
                height: 80,
                width: 80,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(255, 0, 0, 0), width: 3),
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(213, 171, 15, 15)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 13),
                  child: Column(
                    children: [
                      Icon(
                        Icons.headset_mic_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        "Chat",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
                height: 80,
                width: 80,
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(213, 171, 15, 15)),
            height: 295,
            width: 339,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          "Quick contact",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                              color: Colors.white),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 19),
                        child: Text(
                          "Email",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 1),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SizedBox(
                      height: 50,
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintStyle: TextStyle(
                              color: Color.fromARGB(183, 255, 255, 255),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(color: Colors.blue)),
                            hintText: "Enter Your Email",
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(20))),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 19),
                        child: Text(
                          "Message",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 1),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SizedBox(
                      height: 90,
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        maxLength: 100,
                        decoration: InputDecoration(
                            hintText: "Enter Message",
                            hintStyle: TextStyle(color: Colors.white),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue),
                                borderRadius: BorderRadius.circular(10)),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 255, 255, 255)),
                                borderRadius: BorderRadius.circular(20))),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20
            ,
          ),
          Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: Colors.black),
              height: 35,
              width: 90,
              child: Center(
                  child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      "Send",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 20,
                  )
                ],
              )))
        ],
      ),
    );
  }
}
