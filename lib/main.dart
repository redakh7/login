import 'package:flutter/material.dart';
import 'package:udemy_test/home_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:udemy_test/login_page.dart';
import 'package:udemy_test/main_page.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Myapp());

}
final navigatorKey=GlobalKey<NavigatorState>();
class Myapp extends StatelessWidget{
  const Myapp({Key? key}) :super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      navigatorKey:navigatorKey,
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }



}

