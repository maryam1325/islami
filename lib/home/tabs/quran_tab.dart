
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/colors.dart';
class quranTab extends StatelessWidget {
  const quranTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset("assets/images/homeph.png", height: 227,),
        Divider(
          thickness: 3,
          color: AppColors.primaryColor,
        ),
        Text(
          "Sura Names",
          textAlign: TextAlign.center,
          style: GoogleFonts.elMessiri(fontSize: 25,
          fontWeight: FontWeight.w600,),

        ),
        Divider(
          thickness: 3,
          color: AppColors.primaryColor,
        ),
      ],
    );
  }
}


