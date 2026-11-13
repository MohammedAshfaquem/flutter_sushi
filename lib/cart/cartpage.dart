import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:provider/provider.dart';
import 'package:sushi/cart/cartcontroller.dart';
import 'package:sushi/likepage/card/credit_card_page.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<Cartcontroller>(context, listen: false);
    controller.viewcart();
    return Stack(children: [
      Scaffold(
        backgroundColor: Color.fromARGB(248, 0, 0, 0),
        appBar: AppBar(
          foregroundColor: Colors.white,
          title: Text(
            "My Cart",
            style: TextStyle(color: Colors.white),
          ),
          elevation: 0,
          backgroundColor: Color.fromARGB(248, 0, 0, 0),
        ),
        body: Stack(
          children: [
            Consumer<Cartcontroller>(
              builder: (context, value, child) => ListView.builder(
                itemCount: value.cart.length,
                itemBuilder: (context, index) => Padding(
                  padding:
                      EdgeInsets.only(left: 20.w, right: 17.w, bottom: 20.h),
                  child: Slidable(
                    endActionPane: ActionPane(
                      motion: StretchMotion(),
                      children: [
                        SlidableAction(
                          onPressed: (context) => 
                                  value.deletecart(index, context),
                          icon: Icons.delete,
                          borderRadius: BorderRadius.circular(10),
                          spacing: 10,
                          backgroundColor: Colors.red,
                        ),
                      ],
                    ),
                    child: Container(
                      height: 130.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(255, 255, 255, 255)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 140.h,
                            width: 120.w,
                            child: Image.asset(
                              value.cart[index].image,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 40.h,right: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  value.cart[index].name.toString(),
                                  style: TextStyle(
                                      color:
                                          const Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 19,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Text(
                                  value.cart[index].price,
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0)),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
           
          ],
        ),
      
        bottomSheet:  Container(
          width: 390.w,
          height: 90.h,
          decoration: BoxDecoration(
            color: Colors.black,
            border: Border.all(
              width: 3,
              color: Color.fromARGB(255, 255, 255, 255),style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(15)),
          child: Row(
            children: [
              Padding(
                padding:EdgeInsets.only(left: 20.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 20.h),
                      child: Text(
                        "Total price",
                        style: TextStyle(color:Colors.white,fontSize: 17),
                      ),
                    ),
                    Consumer<Cartcontroller>(
                      builder: (context, value, child) => Text(
                        value.totalamount(),
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(left: 110.w),
                child: GestureDetector(
               onTap: () => Navigator.of(context).push(MaterialPageRoute(builder:
               (context) => Creditcards(name: '',))),
                  child: Container(
                    decoration: BoxDecoration(
                      
                        color: Color.fromARGB(255, 0, 0, 0),
                        border: Border.all(
                          width: 3,
                          color: const Color.fromARGB(255, 255, 255, 255)),
                        borderRadius: BorderRadius.circular(10)),
                    height: 50.h,
                    width: 110.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Pay Now",
                          style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: const Color.fromARGB(255, 255, 255, 255),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      )
    ]);
  }
}
