import 'package:flutter/material.dart';
import 'package:flutter_assignment_2/Login_Page.dart';
import 'package:flutter_assignment_2/Splash_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
      return const MaterialApp(
         debugShowCheckedModeBanner: false,
         
         home: SplashScreen(),
        
      );
  }
 }


 class MyHome extends StatefulWidget{
  const MyHome({super.key});

  @override
   LoginPage createState() => LoginPage();

 }


 
 




