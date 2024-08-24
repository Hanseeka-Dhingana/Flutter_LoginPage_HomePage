import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_assignment_2/home_page.dart';
import 'package:flutter_assignment_2/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});
  
  @override
  State<SplashScreen> createState() => splashScreen();
}


class splashScreen extends State<SplashScreen>{
  static const String KEYLOGIN = "Login";

  @override
  void initState(){
    super.initState();

    whereToGo();
  }

  @override
  Widget build(BuildContext context) {
   
      return Scaffold(

        body: Container(

          color: const Color(0xffF5F5F5),

          child: const Center(  child: Text(
            textAlign: TextAlign.center,
            "Welcome To Flutter Sukkur", style: TextStyle(color: Colors.black, fontSize: 40, fontWeight: FontWeight.bold, ),

          ),

          ),
        ),
      );

  }
  
  void whereToGo() async{

     var sharedpref = await SharedPreferences.getInstance();

     var isLogedIn = sharedpref.getBool(KEYLOGIN);

     Timer(const Duration(seconds: 3), (){

         if(isLogedIn != null){
             if(isLogedIn){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomePage(),));
             }

             else{
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const MyHome(),));
             }

         }

        else{
               Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const MyHome(),));

        } 
           
    });
  }
  }


