import 'dart:js';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key, required this.onTap, required this.hintText});

  final Function()? onTap;
  final hintText;

  @override
  Widget build(BuildContext) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(25.0),
        margin: const EdgeInsetsDirectional.symmetric(horizontal: 25.0),
        decoration: BoxDecoration(
            color: Colors.blueAccent, borderRadius: BorderRadius.circular(8.0)),
        child: Center(
          child: Text(
            hintText,
            style: GoogleFonts.lato(
                textStyle: Theme.of(BuildContext).textTheme.titleLarge,
                fontSize:20,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
                color: Colors.white)
          ),
        ),
      ),
    );
  }
}
