import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:sushi/mainpages/Screen_page.dart';
import 'package:url_launcher/link.dart';
class Login extends StatelessWidget {
Login({super.key});

final GlobalKey<FormFieldState> formkey = GlobalKey<FormFieldState>();
  @override
  Widget build(BuildContext context) {
    final TextEditingController name = TextEditingController();
    return Scaffold(
      backgroundColor: const Color.fromARGB(172, 0, 0, 0),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(key: formkey,
            child: Column(
              children: [
                Padding(
                  padding:  EdgeInsets.only(top: 30.h),
                  child: Center(
                      child: Lottie.asset("lib/animations/login page.json",height: 200.h),),
                ),
                SizedBox(
                  height: 30.h,
                ),
                const Text(
                  "Welcome back you've been missed!",
                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900,fontSize: 17),
                ),
                SizedBox(
                  height: 25.h,
                ),
                TextFormField(
                  validator: (value) {
                    if(value==null || value.isEmpty){
                      return "Please enter username !";
                    }
                  },
                style: const TextStyle(color: Colors.white),
                  controller: name,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue)),
                      labelText: "Username",
                      labelStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.w500)),
                ),
                SizedBox(
                  height: 10.h,
                ),
                TextFormField(
                  validator: (value) {
                    if(value!.isEmpty){
                      return "Please enter password !";
                    }
                  },
                  style: const TextStyle(color: Colors.white),
                  controller: TextEditingController(),
                  obscureText: true,
                  onTap: () {},
                  decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue)),
                      labelText: "Password",
                      labelStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.w500)),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 210),
                  child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Forget password ?",
                        style: TextStyle(color: Colors.blue),
                      )),
                ),
                SizedBox(
                  height: 10.h,
                ),
                ElevatedButton(
                  style: const ButtonStyle(
                    
                      backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 255, 255, 255))),
                  onPressed: () {
                   if(formkey.currentState!.validate()){
                     Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Screenpage(names: name.text,),
                        ),);
                   }
                  },
                  child: const Padding( 
                    padding: EdgeInsets.all(20.0),
                    child: Center(
                        child: Text(
                      "Sign in",
                      style: TextStyle(fontSize: 19,color: Colors.black),
                    )),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                const Row(
                  children: [
                    Expanded(
                        child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.white,
                      ),
                    )),
                    Text(
                      "or continue with",
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    ),
                    Expanded(
                        child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.white,
                      ),
                    )),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Link(uri: Uri.parse("https://accounts.google.com/v3/signin/identifier?authuser=0&continue=https%3A%2F%2Fmyaccount.google.com%2F%3Futm_source%3Dsign_in_no_continue%26pli%3D1&ec=GAlAwAE&hl=en_GB&service=accountsettings&flowName=GlifWebSignIn&flowEntry=AddSession&dsh=S-1056746142%3A1699277047465011&theme=glif"), builder:(context, followLink) {
                    return    GestureDetector(
                      onTap: followLink,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromARGB(255, 249, 244, 244)),
                        height: 80.h,
                        width: 80.w,
                        child: Padding(
                          padding: const EdgeInsets.all(13.0),
                          child: Image.asset(
                            "lib/images/download.png",
                          ),
                        ),
                      ),
                    );
                    },),
                    SizedBox(
                      width: 30.h,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 249, 244, 244)),
                      height: 80.h,
                      width: 80.w,
                      child: Link(uri: Uri.parse("https://www.icloud.com/",), builder: (context, followLink) {
                        return    IconButton(
                        onPressed:followLink,
                        icon: Icon(
                          Icons.apple,
                          size: 50.h,
                        ),
                      );
                      },),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                TextButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Not a member ?",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      SizedBox(
                        width: 10.h,
                      ),
                      const Text(
                        "Register Now",
                        style: TextStyle(color: Colors.blue, fontSize: 15),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
