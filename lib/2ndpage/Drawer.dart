import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sushi/Drawer/Refer%20and%20earn.dart';
import 'package:sushi/Drawer/customerservice.dart';
import 'package:sushi/Drawer/drawerwidgets.dart';
import 'package:sushi/Drawer/profilpage.dart';
import 'package:sushi/Drawer/showpopup.dart';
import 'package:sushi/Drawer/trackorder.dart';
import 'package:sushi/Loginpage/loginpage.dart';
import 'package:sushi/cart/cartpage.dart';
import 'package:sushi/coupons/Couponcard.dart';
import 'package:sushi/likepage/likrpage.dart';

class Drawers extends StatelessWidget {
  const Drawers({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return  Drawer(
          backgroundColor: Color.fromARGB(212, 0, 0, 0),
          child: Column(
            children: [
              Container(
                height: 220.h,
                width: 280,
                child: DrawerHeader(
                    child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                Profilepage(profilename: name)));
                  },
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 15.w,top: 6),
                        child: CircleAvatar(
                            radius: 55,
                            backgroundColor:
                               Colors.grey.shade300,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset("lib/images/avatars.png",fit: BoxFit.cover,),
                            )),
                      ),
                      Padding(
                            padding: EdgeInsets.only(top: 10.h),
                            child: Text(
                              name,
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 255, 255, 255)),
                            ),
                          )
                    ],
                  ),
                )),
              ),
              Column(
                children: [
                  drawer(
                    niram: Color.fromARGB(255, 0, 0, 0),
                    lead: IconButton(
                        onPressed: () {}, icon: Icon(Icons.favorite_border_outlined)),
                    text: "Favourites",
                    nextpage: Like(),
                  ),
                  drawer(
                      niram: Color.fromARGB(255, 0, 0, 0),
                      lead: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.card_giftcard_outlined)),
                      text: "Coupons",
                      nextpage: Redeem()),
                  drawer(
                      niram: Color.fromARGB(255, 0, 0, 0),
                      lead: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.shopping_cart_outlined)),
                      text: "My Cart",
                      nextpage: Cart()),
                  drawer(
                      niram: Color.fromARGB(255, 0, 0, 0),
                      lead: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.location_on_outlined)),
                      text: "Track your order",
                      nextpage: Trackorder()),
                  Padding(
                    padding: EdgeInsets.only(left: 30.w, right: 50.w, top: 9.h),
                    child: Divider(
                      thickness: 1,
                      color: Colors.white,
                    ),
                  ),
                  Popup(),
                  drawer(
                      niram: Color.fromARGB(255, 0, 0, 0),
                      lead: IconButton(
                          onPressed: () {}, icon: Icon(Icons.share_outlined)),
                      text: "Refer and earn ",
                      nextpage: helpcenter()),
                  drawer(
                      niram: Color.fromARGB(255, 0, 0, 0),
                      lead: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.headset_mic_outlined)),
                      text: "Contact us",
                      nextpage: Customerservice()),
                  SizedBox(
                    height: 50.h,
                  ),
                  drawer(
                      niram: const Color.fromARGB(255, 255, 0, 0),
                      lead: IconButton(
                          onPressed: () {
                          },
                          icon: Icon(
                            Icons.logout_outlined,
                          )),
                      text: "Logout",
                      nextpage: Login()),
                ],
              )
            ],
          ));
  }
}