import 'package:flutter/material.dart';

class Favouritespage extends StatelessWidget {
  const Favouritespage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        centerTitle: true,
        title: Text(
          "Favourits",
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 30, top: 20),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Container(
                color: Color.fromARGB(255, 227, 227, 227),
                height: 190,
                width: 130,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      "lib/images/sushiwite.avif",
                      fit: BoxFit.fill,
                      height: 110,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:8),
                      child: Text("Sushi",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:8),
                      child: Text("Sushi Rolls with spicy rice flex"),
                    ),
                    SizedBox(height: 6,),
                    Padding(
                      padding: const EdgeInsets.only(left:8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text("\$20",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w800),), Icon(Icons.arrow_forward)],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
             ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Container(
                color: Color.fromARGB(255, 255, 255, 255),
                height: 190,
                width: 130,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      "lib/images/japan.jpg",
                      fit: BoxFit.fill,
                      height: 100,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:8),
                      child: Text("Sushi",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:8),
                      child: Text("Sushi Rolls with spicy rice flex"),
                    ),
                    SizedBox(height: 6,),
                    Padding(
                      padding: const EdgeInsets.only(left:8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text("\$20",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w800),), Icon(Icons.arrow_forward)],
                      ),
                    )
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
