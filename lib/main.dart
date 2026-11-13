import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';
import 'package:sushi/cart/cartcontroller.dart';
import 'package:sushi/likepage/likecontroller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sushi/mainpages/Screen_page.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
   await Hive.initFlutter();
  if(!Hive.isAdapterRegistered(cartmodelAdapter().typeId)){
    Hive.registerAdapter(cartmodelAdapter());
  }
  //if(!Hive.isAdapterRegistered(likestructureAdapter().typeId)){
   // Hive.registerAdapter(likestructureAdapter());
  //}
  
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => Cartcontroller(),),
      ChangeNotifierProvider(create: (context) => Likecontroller(),)
    ],
    child: ScreenUtilInit(
      designSize: Size(393,808),
      minTextAdapt: false,
       splitScreenMode: true,
       builder: (context, child) => 
        MaterialApp(
        debugShowCheckedModeBanner: false,
        home:Screenpage(),
      ),
    ),
  ),);
}
