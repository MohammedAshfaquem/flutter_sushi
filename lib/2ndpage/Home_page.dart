// This is second page
import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sushi/2ndpage/2nd_text_field.dart';
import 'package:sushi/2ndpage/2ndlast.dart';
import 'package:sushi/2ndpage/Drawer.dart';
import 'package:sushi/2ndpage/Fast_Food_Tile.dart';
import 'package:sushi/2ndpage/Redeem_box.dart';
import 'package:sushi/2ndpage/fastfoods.dart';
import 'package:sushi/2ndpage/listviewof_items.dart';

class Homepage extends StatefulWidget {
  Homepage({super.key, required this.name});
  final String name;

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      // appbar
      /*appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        elevation: 10,
        
        title: Text(
          "TOKYO",
          style: TextStyle(
              fontFamily: 'my fonts',
              fontSize: 25,
              color: Color.fromARGB(255, 0, 0, 0)),
        ),
        
        leading: Builder(builder: (context) {
          return Padding(
            padding: const EdgeInsets.only(left: 14,top: 3,bottom: 3),
            child: Container(height: 30,width: 30,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset('lib/images/menus.png'),
            ),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              boxShadow: [BoxShadow(color: Colors.grey,blurRadius: 5)],
              
              borderRadius: BorderRadius.circular(20)),),
          );
        }),
        leadingWidth: 70,
        
      ),*/
      // drawer

      drawer: Drawers(name: widget.name),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 15.w, top: 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 90,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Builder(builder: (context) {
                      return Padding(
                        padding:
                            const EdgeInsets.only(left: 10, top: 3, bottom: 3),
                        child: GestureDetector(
                          onTap: () {
                            Scaffold.of(context).openDrawer();
                          },
                          child: Container(
                            height: 40,
                            width: 40,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Image.asset('lib/images/menus.png'),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                boxShadow: [
                                  BoxShadow(color: Colors.grey, blurRadius: 5)
                                ],
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        ),
                      );
                    }),
                    Text(
                      "TOKYO",
                      style: TextStyle(
                          fontFamily: 'my fonts',
                          fontSize: 25,
                          color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: CircleAvatar(backgroundImage: AssetImage('lib/images/avatars.png'),),
                    )
                  ],
                ),
              ),
              Redeem_box(),
              SizedBox(
                height: 15.h,
              ),
              Text_field(),
              SizedBox(
                height: 5.h,
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: FadeInUp(
                  duration: Duration(milliseconds: 1000),
                  delay: Duration(milliseconds: 400),
                  child: Text(
                    "FOOD MENU",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        letterSpacing: 1),
                  ),
                ),
              ),
              Listviewepage(),
              SizedBox(
                height: 19.h,
              ),
              FadeInUp(
                duration: Duration(milliseconds: 1000),
                delay: Duration(milliseconds: 800),
                child: Text(
                  "Fast foods",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      letterSpacing: 1),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
