import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName= "home";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset("assets/images/s_bg.png"),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            centerTitle: true,
            title: Text("Islami", style: GoogleFonts.elMessiri(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),),
          ),
          bottomNavigationBar: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            backgroundColor: Color(0xffB7935F),
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.white,
            items: [
            BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/quran.png")),label: "quran"),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/sebha.png")),label: "sebha"),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/radio.png")),label: "radio"),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/ahadeth.png")),label: "ahadeth"),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label: "settings"),

          ],),
        ),
      ],
    );
  }
}
