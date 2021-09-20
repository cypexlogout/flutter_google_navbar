import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget home() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text("This is Home Page.",
          style: GoogleFonts.poppins(
            fontSize: 26,
          ))
    ],
  );
}

Widget game() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text("This is Game Section.",
          style: GoogleFonts.poppins(
            fontSize: 26,
          ))
    ],
  );
}

Widget balance() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text("This is Balance Part Page.",
          style: GoogleFonts.poppins(
            fontSize: 26,
          ))
    ],
  );
}

Widget rules() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text("This is Rule Book.",
          style: GoogleFonts.poppins(
            fontSize: 26,
          ))
    ],
  );
}
