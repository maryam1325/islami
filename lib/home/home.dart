import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/home/tabs/ahadeth_tab.dart';
import 'package:islami/home/tabs/quran_tab.dart';
import 'package:islami/home/tabs/radio_tab.dart';
import 'package:islami/home/tabs/sebha_tab.dart';
import 'package:islami/home/tabs/settings_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName= "home";
   HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   int selectedindex=0;

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
            currentIndex: selectedindex,
            onTap: (index){
              selectedindex=index;
              setState(() {

              });
            },
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Color(0xffB7935F),
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.white,
            items: [
            BottomNavigationBarItem(
                backgroundColor: Color(0xffB7935F),
                icon: ImageIcon(AssetImage("assets/images/quran.png")),label: "quran"),
            BottomNavigationBarItem(
                backgroundColor: Color(0xffB7935F),
                icon: ImageIcon(AssetImage("assets/images/sebha.png")),label: "sebha"),
            BottomNavigationBarItem(
                backgroundColor: Color(0xffB7935F),
                icon: ImageIcon(AssetImage("assets/images/radio.png")),label: "radio"),
            BottomNavigationBarItem(
                backgroundColor: Color(0xffB7935F),
                icon: ImageIcon(AssetImage("assets/images/ahadeth.png")),label: "ahadeth"),
            BottomNavigationBarItem(
                backgroundColor: Color(0xffB7935F),
                icon: Icon(Icons.settings),label: "settings"),

          ],),
          body: tabs[selectedindex],
        ),
      ],
    );
  }
  List<Widget> tabs=[
    quranTab(),
    sebhaTab(),
    radioTab(),
    ahadethTab(),
    settingsTab()
  ];
}
