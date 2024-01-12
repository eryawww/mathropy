import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mathropy/styling.dart';

class PageTitle extends StatelessWidget {
  final String title;

  const PageTitle({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20.0),
          bottomRight: Radius.circular(20.0),
        ),
        color: Colors.black, // Adjust the color as needed
      ),
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Text(
            title,
            style: GoogleFonts.montserrat(
                color: Colors.white,
                fontSize: MyFont.titleSize,
                fontWeight: MyFont.titleWeight,
                decoration: TextDecoration.none
                // decoration: Decoration
                ),
          ),
        ),
      ),
    );
  }
}
