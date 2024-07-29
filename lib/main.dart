import 'package:flutter/material.dart';
import 'package:islami/home.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        initialRoute: HomeScreen.routeName,
        routes:{
        HomeScreen.routeName : (context) => HomeScreen(),

        }
    );
  }
  }

