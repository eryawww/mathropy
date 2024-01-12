import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mathropy/screen/auth.dart';
import 'package:mathropy/styling.dart';
import 'package:mathropy/widget/pageTitle.dart';
import 'package:mathropy/widget/statusbar.dart';

class Evaluation extends StatelessWidget {
  const Evaluation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          PageTitle(title: "Evaluation"),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                child: Row(
                  children: [
                    Center(
                      child: Icon(
                        Icons.check_circle_outline,
                        color: Colors.black,
                        size: 50,
                      ),
                    ),
                    Text(
                      '10',
                      style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: MyFont.titleSize,
                          decoration: TextDecoration.none,
                          fontWeight: MyFont.titleWeight),
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    RotationTransition(
                      turns: AlwaysStoppedAnimation(45 / 360),
                      child: Center(
                        child: Icon(
                          Icons.add_circle_outline,
                          color: Colors.black,
                          size: 50,
                        ),
                      ),
                    ),
                    Text(
                      '10',
                      style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: MyFont.titleSize,
                          decoration: TextDecoration.none,
                          fontWeight: MyFont.titleWeight),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          Text(
            'Pertahankan!',
            style: GoogleFonts.montserrat(
                color: Colors.black,
                fontSize: MyFont.subTitleSize,
                decoration: TextDecoration.none,
                fontWeight: MyFont.subTitleWeight),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: StatusBar(
                title: 'Matrix',
                progress: .94,
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(20)),
                textwidth: 100),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: StatusBar(
                title: 'Derivative',
                progress: .85,
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(20)),
                textwidth: 100),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: StatusBar(
                title: 'Integral',
                progress: .77,
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(20)),
                textwidth: 100),
          ),
          SizedBox(height: 30),
          Text(
            'Butuh Peningkatan',
            style: GoogleFonts.montserrat(
                color: Colors.black,
                fontSize: MyFont.subTitleSize,
                decoration: TextDecoration.none,
                fontWeight: MyFont.subTitleWeight),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: StatusBar(
              title: 'Logic',
              progress: .35,
              decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(20)),
              progresscolor: Colors.orange[400],
              textwidth: 100,
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: StatusBar(
              title: 'Combinatoric',
              progress: .3,
              decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(20)),
              progresscolor: Colors.orange[400],
              textwidth: 100,
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: StatusBar(
              title: 'Probability',
              progress: .2,
              decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(20)),
              progresscolor: Colors.red[400],
              textwidth: 100,
            ),
          ),
          SizedBox(height: 25),
          Material(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(10)),
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              height: 50,
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AuthPage()));
                },
                child: Center(
                  child: Text(
                    'Main Menu',
                    style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: MyFont.subTitleSize,
                        decoration: TextDecoration.none,
                        fontWeight: MyFont.subTitleWeight),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
