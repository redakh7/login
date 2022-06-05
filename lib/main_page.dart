import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:udemy_test/home_page.dart';
import 'package:udemy_test/login_page.dart';
class MainPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Scaffold(
     body: StreamBuilder<User?>(
       stream : FirebaseAuth.instance.authStateChanges(),
     builder: (context ,snapshot){
       if (snapshot.hasData){
         return HomePage();
       }else{
         return LoginPage();
    }

       },
     ),
   );
  }
  
}