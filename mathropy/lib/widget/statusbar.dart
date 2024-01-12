import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mathropy/styling.dart';

class StatusBar extends StatelessWidget {
  Color? background;
  Color? progresscolor;
  BoxDecoration? decoration;
  double? textwidth;
  String title;
  double progress;

  StatusBar(
      {required this.title,
      required this.progress,
      this.textwidth,
      this.decoration,
      this.background,
      this.progresscolor,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: decoration,
      padding: EdgeInsets.all(15.0),
      child: Row(
        children: [
          Container(
            width: textwidth?? 75,
            child: Text(
              title,
              style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: MyFont.descriptionSize,
                  decoration: TextDecoration.none,
                  fontWeight: MyFont.descriptionWeight),
            ),
          ),
          SizedBox(width: 16.0),
          Expanded(
            child: LinearProgressIndicator(
              value: progress,
              // backgroundColor: prog,
              valueColor:
                  AlwaysStoppedAnimation<Color>(progresscolor ?? Colors.green),
            ),
          ),
        ],
      ),
    );
  }
}
