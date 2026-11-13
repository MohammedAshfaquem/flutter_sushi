import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:provider/provider.dart';
import 'package:sushi/Details_page/ingredients.dart';
import 'package:sushi/cart/cartcontroller.dart';
import 'package:sushi/likepage/likecontroller.dart';

class Sushipage extends StatelessWidget {
  Sushipage(
      {super.key,
      required this.imagesurl,
      required this.name,
      required this.rating,
      required this.description,
      required this.rate,
      required this.bigname,
      required this.dimage,
      required this.index});

  final String imagesurl;
  final String name;
  final String rating;
  final String description;
  final String rate;
  final String bigname;
  final double dimage;
  final int index;

  @override
  Widget build(BuildContext context) {
    final Cartcontroller controller = Provider.of(context, listen: false);
    final Likecontroller likecontroller = Provider.of(context, listen: false);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15, top: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Image.asset(
                            "lib/icons/left.png",
                            height: 40,
                            color: Colors.grey[700],
                          )),
                      /*Consumer<Likecontroller>(
                        builder: (context, value, child) => LikeButton(
                          isLiked:value.isliked[index],
                          onTap: (isLiked)async {
                            value.likecontroll(index);
                            if(isLiked==false){
                               value.addtofavourites(likestructure(itemname: name,
                                itemprice:rate, 
                                itemphoto:imagesurl));
                                print("added");
                            }
                            else{
                                   value.removefavorites(index,context);
                            }
                            }
                        ),
                      ),*/
                    ],
                  ),
                  Center(
                      child: Text(
                    bigname,
                    style: TextStyle(
                        letterSpacing: 4,
                        fontSize: 28,
                        fontWeight: FontWeight.w600),
                  )),
                  Center(
                    child: Container(
                      height: 230,
                      width: 280,
                      child: Image.asset(
                        imagesurl,
                        width: dimage,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          border: Border.all(color: Colors.grey)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset(
                                "lib/icons/avacado.png",
                                height: 50,
                              ),
                              Text(
                                "Avacado",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w700),
                              )
                            ],
                          ),
                          VerticalDivider(
                            thickness: 2,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset(
                                "lib/icons/meat.png",
                                height: 40,
                              ),
                              Text(
                                "Meat",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w700),
                              )
                            ],
                          ),
                          VerticalDivider(
                            thickness: 2,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset(
                                "lib/icons/rice.png",
                                height: 40,
                              ),
                              Text(
                                "Rice",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w700),
                              )
                            ],
                          ),
                        ],
                      ),
                      height: 80,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Details",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                      Text(
                        "Salmon sushi is a quite and neutral flavor.but \nmeet is a excellent for absorbing the flavours",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    "Ingredients",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            ingredients(
              image: 'lib/images/pop.png',
              name: 'pop',
            ),
            ingredients(
              image: 'lib/images/vendu.png',
              name: 'ladyfinger',
            ),
            ingredients(
              image: 'lib/images/tomu.png',
              name: 'Tomato',
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 150,
              color: Color.fromARGB(248, 255, 255, 255),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 35),
                        child: Text(
                          rate,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Color.fromARGB(255, 0, 0, 0)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              height: 40,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                              child: IconButton(
                                  onPressed: () => controller.decrement(),
                                  icon: const Icon(
                                    Icons.remove,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                  )),
                            ),
                            Consumer<Cartcontroller>(
                                builder: (context, value, child) =>
                                    Text(value.quantity.toString())),
                            Container(
                              height: 40,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromARGB(255, 0, 0, 0)),
                              child: IconButton(
                                  onPressed: () => controller.increment(),
                                  icon: const Icon(
                                    Icons.add,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            controller.addtocart(cartmodel(
                                image: imagesurl, name: name, price: rate));
                            final snackBar = SnackBar(
                              /// need to set following properties for best effect of awesome_snackbar_content
                              elevation: 0,
                              behavior: SnackBarBehavior.floating,
                              backgroundColor: Colors.transparent,
                              content: AwesomeSnackbarContent(
                                title: 'Succefully Added to cart',
                                message:
                                    'Your  item Will be succesfully Added to cart.Thank you ',

                                /// change contentType to ContentType.success, ContentType.warning or ContentType.help for variants
                                contentType: ContentType.success,
                              ),
                            );

                            ScaffoldMessenger.of(context)
                              ..hideCurrentSnackBar()
                              ..showSnackBar(snackBar);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.black),
                            height: 50,
                            width: 180,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                                Text(
                                  "Add to cart",
                                  style: TextStyle(
                                      fontSize: 17, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 110,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
