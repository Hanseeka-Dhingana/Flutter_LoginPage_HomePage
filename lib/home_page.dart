import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

   return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: const Text('Home Page', style: TextStyle(color: Colors.black, fontFamily: "TimesNew Romane", fontSize: 25 )),
                   backgroundColor: const Color(0xffD9D9D9),

         actions: <Widget>[
            IconButton(icon: const Icon(Icons.keyboard_return,
                                        size: 30,
                                        color:Colors.black87),
                                        onPressed: () {
                                         Navigator.pop(context); 

                                        },),
           const SizedBox(height: 10,), 
          ],           
      ),

      body: const Column(

        children: <Widget> [

          SizedBox(
              height: 250,
              width: 350,
          ),

          Text(
                'Home Page', style: TextStyle( fontWeight: FontWeight.bold, fontSize: 50),
              ),

        ]
        ),

        
      );
  
    
  }
  }