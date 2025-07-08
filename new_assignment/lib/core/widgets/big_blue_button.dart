import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget bigBlueButton({String? text, required Function onPressed}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color(0xFF2563EB),
      minimumSize: const Size(double.infinity, 50),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
    ),
    onPressed: () => onPressed(),
    child: Text(
      text??'',
      style:  TextStyle(
        color: Colors.white,
        fontSize: 15,
        fontFamily: GoogleFonts.inter().fontFamily,
        fontWeight: FontWeight.w700,
      ),
    ),
  );
}