import 'package:flutter/material.dart';
import 'package:flutter_assignment_2/Splash_Screen.dart';
import 'package:flutter_assignment_2/home_page.dart';
import 'package:flutter_assignment_2/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends State<MyHome>{
    
    var emailContoller = TextEditingController();
    var passController = TextEditingController();
    bool _obscureText = true;

    

  @override
  Widget build (BuildContext context){
       return  Scaffold(

        backgroundColor: const Color(0xffF5F5F5),
        appBar: AppBar( 
          centerTitle: true,
          title: const Text('Login Page', style: TextStyle(color: Colors.black, fontFamily: "TimesNew Romane", fontSize: 25 )),
                   backgroundColor: const Color(0xffD9D9D9),
        ),

        body:Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 100),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            const Text(
              "Email",
              textAlign: TextAlign.start,
               style: TextStyle( fontSize: 20),
            ),
            
            SizedBox(  
            height: 40,
            width: double.infinity,

          child: TextField(
              controller: emailContoller,

              decoration: InputDecoration(
                filled: true,  // Enable background color
                fillColor: const Color(0xffD9D9D9),  // Set background color
                hintText: "Enter your Email",

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none
                )
              
              ),
            ),
          ),

           const SizedBox(
                  height: 30,
                 ),


           const Text(
             "Password",
             textAlign: TextAlign.start,
               style: TextStyle(
                 fontSize: 20
               ),
           ),   


            SizedBox(  
            height: 40,
            width: double.infinity,

          child: TextField(
              controller: passController,  
              obscureText:  _obscureText,

              decoration: InputDecoration(
                filled: true,  // Enable background color
                fillColor: const Color(0xffD9D9D9),  // Set background color
                hintText: "Enter your Password",

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),

                suffixIcon: IconButton(
                icon: Icon(
                   _obscureText ? Icons.visibility : Icons.visibility_off,
                ),
                onPressed: () {
                 setState(() {
                   _obscureText = !_obscureText; // Toggle password visibility
                 });
          },
        ),
              
              ),
            ),
          ),   
          

          const SizedBox(
                  height: 50,
                  width: 100,
                 ),
          
            
            ElevatedButton(onPressed: () async{ 
              //if Successfully Login 

              var sharedpref = await SharedPreferences.getInstance();
               sharedpref.setBool(splashScreen.KEYLOGIN, true);

                Navigator.pushReplacement(
                  context,MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                
                  ),
                   foregroundColor: Colors.white, 
                   backgroundColor: const Color(0xff23FB00),  
                   fixedSize: const Size(250, 30),
              ),
              child: const Text('Login', style: TextStyle(fontSize: 20, fontFamily: "TimesNew Roman"),) )  
            ],

            

          ),
               
        ),
               
      );
       
    }
  
}
