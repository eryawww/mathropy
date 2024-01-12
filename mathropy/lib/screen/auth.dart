import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mathropy/screen/tryout.dart';
import 'package:mathropy/styling.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 100, horizontal: 10),
            child: Column(
              children: [
                Text(
                  "Welcome to Mathropy",
                  style: GoogleFonts.montserrat(
                      fontSize: MyFont.titleSize,
                      color: Colors.black,
                      decoration: TextDecoration.none,
                      fontWeight: MyFont.titleWeight),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 30),
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGwExbvCAV5wmfTFnfUHr_J72qjaPP4fI3uw&usqp=CAU',
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  "Embark on an extraordinary journey of mathematical discovery with Mathropy, where learning meets the power of AI. We're not just an app; we're your personal guide to mastering math in a way that's personalized, engaging, and entirely your own.",
                  style: GoogleFonts.montserrat(
                      fontSize: MyFont.descriptionSize,
                      color: Colors.black,
                      decoration: TextDecoration.none,
                      fontWeight: MyFont.descriptionWeight),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
        Material(
          child: Container(
            padding: EdgeInsets.all(0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
              color: Colors.black,
            ),
            width: double.infinity,
            child: InkWell(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
              onTap: () {
                // Handle Google login action
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => TryOut()));
              },
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Center(
                  child: Text(
                    'Login with Google',
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                      fontSize: MyFont.subTitleSize,
                      fontWeight: MyFont.subTitleWeight
                    ),
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
