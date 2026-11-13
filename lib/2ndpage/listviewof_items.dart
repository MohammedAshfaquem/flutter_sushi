import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sushi/Details_page/detailspage.dart';
import 'package:sushi/2ndpage/itemspage.dart';

class Listviewepage extends StatelessWidget {
  const Listviewepage({super.key});

  @override
  Widget build(BuildContext context) {
    return       SizedBox(
                height: 240.h,
                child: FadeInUp(
                  duration: Duration(milliseconds: 1000),
                  delay: Duration(milliseconds: 600),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Sushipage(
                                index: 0,
                                dimage: 250,
                                bigname: "SALMON",
                                rate: "21.00",
                                imagesurl:
                                    "lib/images/sushi-removebg-preview.png",
                                name: "Salmon Sushi",
                                rating: "4.5",
                                description:
                                    "Sometimes called inside-out roll.some people say thatit is popular in america because the seaweed is hidden on the \ninside of the roll and sushi beginners are \nless intimidated to eat it",
                              ),
                            ),
                          );
                        },
                        child:  Menupage(
                          height: 180,
                          width: 190,
                          menuimage: "lib/images/sushi-removebg-preview.png",
                          itemname: "Salmon",
                          rate: "21.00",
                          rating: "4.5",
                        ),
                      ),
                     SizedBox(
                        width: 20.w,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Sushipage(
                                index: 1,
                                dimage: 250.w,
                                bigname: "CHAL MEIN",
                                rate: "42.00",
                                imagesurl:
                                    "lib/images/try-removebg-preview.png",
                                name: "Chao Mein",
                                rating: "3.8",
                                description:
                                    "Salmon sushi is a favorite around the world, prized for its mild flavor and pleasant fattiness that's packed with omega-3 acids without being too rich or oily. However, it may surprise you to find out that sushi salmon only recently came to be eaten in Japan in the past generation or so.",
                              ),
                            ),
                          );
                        },
                        child: Menupage(
                          height: 180,
                          width: 200,
                          menuimage: "lib/images/try-removebg-preview.png",
                          itemname: "Chou Mein",
                          rate: "42.00",
                          rating: "3.8",
                        ),
                      ),
                       SizedBox(
                        width: 20.h,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Sushipage(
                                  index: 2,
                                  dimage: 290,
                                  bigname: "NIGIRI",
                                  rate: "11.00",
                                  description:
                                      "Spring Rolls is a favorite around the world, prized for its mild flavor and pleasant fattiness that's packed with omega-3 acids without being too rich or oily. However, it may surprise you to find out that sushi salmon only recently came to be eaten in Japan in the past generation or so.",
                                  imagesurl:
                                      "lib/images/5-removebg-preview.png",
                                  name: "Spring Rolls",
                                  rating: "4.1",
                                ),
                              ));
                        },
                        child: Menupage(
                          height: 180,
                          width: 180,
                          menuimage: "lib/images/5-removebg-preview.png",
                          itemname: "Spring Rolls",
                          rate: "11.00",
                          rating: "4.1",
                        ),
                      ),
                       SizedBox(
                        width: 20.h,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Sushipage(
                                  index: 3,
                                  dimage: 300,
                                  bigname: "WONTON",
                                  rate: "120.00",
                                  description:
                                      "Wanton soup is a favorite around the world, prized for its mild flavor and pleasant fattiness that's packed with omega-3 acids without being too rich or oily. However, it may surprise you to find out that sushi salmon only recently came to be eaten in Japan in the past generation or so.",
                                  imagesurl:
                                      "lib/images/4-removebg-preview.png",
                                  name: "Wonton Soup",
                                  rating: "4.9",
                                ),
                              ));
                        },
                        child:  Menupage(
                          height: 190,
                          width: 180,
                          menuimage: "lib/images/4-removebg-preview.png",
                          itemname: "Wonton Soup",
                          rate: "120.00",
                          rating: "4.9",
                        ),
                      ),
                       SizedBox(
                        width: 20.h,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Sushipage(
                                  index:4 ,
                                  dimage: 300,
                                  bigname: "Char siu",
                                  rate: "4.00",
                                  description:
                                      "char siu is a favorite around the world, prized for its mild flavor and pleasant fattiness that's packed with omega-3 acids without being too rich or oily. However, it may surprise you to find out that sushi salmon only recently came to be eaten in Japan in the past generation or so.",
                                  imagesurl:
                                      "lib/images/lemonsushi-removebg-preview.png",
                                  name: "Char siu",
                                  rating: "3.8",
                                ),
                              ));
                        },
                        child:  Menupage(
                          height: 190,
                          width: 180,
                          menuimage: "lib/images/lemonsushi-removebg-preview.png",
                          itemname: "Char siu",
                          rate: "24.00",
                          rating: "3.8",
                        ),
                      ),
                    ],
                  ),
                ),
              );
  }
}