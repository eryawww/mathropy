import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mathropy/screen/evaluation.dart';
import 'package:mathropy/styling.dart';
import 'package:mathropy/widget/pageTitle.dart';

class TryOut extends StatefulWidget {
  const TryOut({super.key});

  @override
  State<TryOut> createState() => _TryOutState();
}

class _TryOutState extends State<TryOut> {
  final int questionNow = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PageTitle(title: "Try Out UTBK 2019 A"),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            '6 Minutes 30 Seconds Left',
            style: GoogleFonts.montserrat(
                color: Colors.black,
                fontSize: MyFont.descriptionSize,
                decoration: TextDecoration.none,
                fontWeight: MyFont.descriptionWeight),
          ),
        ),
        Container(
          height: 75,
          child: QuestionNumberButton(
            questionNow: questionNow, questionCount: 4)),
        SizedBox(height: 5),
        Expanded(
          child: QuestionText(
            questionNow: questionNow,
          ),
        ),
        BottomNavBar()
      ],
    );
  }
}

class QuestionNumberButton extends StatelessWidget {
  final int questionCount;
  final int questionNow;

  const QuestionNumberButton(
      {required this.questionCount, required this.questionNow, super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final columnCount = (screenWidth / 70).floor();
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: columnCount,
          ),
          itemCount: questionCount,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(10), // Adjust padding as needed
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: index + 1 == questionNow ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(10.0)),
              child: Center(
                child: Text(
                  (index + 1).toString(),
                  style: GoogleFonts.montserrat(
                      color: index + 1 == questionNow
                          ? Colors.white
                          : Colors.black,
                      fontSize: MyFont.subTitleSize,
                      decoration: TextDecoration.none,
                      fontWeight: MyFont.subTitleWeight),
                ),
              ),
            );
          },
        ));
  }
}

class QuestionText extends StatelessWidget {
  final int questionNow;

  const QuestionText({required this.questionNow, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Soal $questionNow',
          textAlign: TextAlign.start,
          style: GoogleFonts.montserrat(
              color: Colors.black,
              fontSize: MyFont.subTitleSize,
              decoration: TextDecoration.none,
              fontWeight: MyFont.subTitleWeight),
        ),
        // SizedBox(height: 10),
        Text(
          'Solve the linear equation bellow\n',
          style: GoogleFonts.montserrat(
              color: Colors.black,
              fontSize: MyFont.descriptionSize,
              decoration: TextDecoration.none,
              fontWeight: MyFont.descriptionWeight),
        ),
        Image.network(
          'https://countingwell-assets-production.s3.ap-south-1.amazonaws.com/bcf5ce50-422d-4a7a-9e05-fbd32404e6b4-9%20NonCheckpoint-01%20%282%29.png',
          height: 150,
        ),
        SizedBox(height: 10),
        MultipleAnswer(letter: 'A', text: 'x = 2, y = 3'),
        MultipleAnswer(letter: 'B', text: 'x = 1, y = 2'),
        MultipleAnswer(letter: 'C', text: 'x = 3, y = 1'),
        MultipleAnswer(letter: 'D', text: 'x = 4, y = -1'),
        // SizedBox(height: 10),
      ],
    );
  }
}

class MultipleAnswer extends StatelessWidget {
  final String letter;
  final String text;

  const MultipleAnswer({required this.letter, required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          color: Colors.grey[200], // Adjust the color as needed
        ),
        padding: EdgeInsets.symmetric(vertical: 6),
        child: Row(
          children: [
            SizedBox(width: 10),
            Text(
              letter,
              style: GoogleFonts.montserrat(
                color: Colors.black,
                fontSize: MyFont.descriptionSize,
                decoration: TextDecoration.none,
                fontWeight: MyFont.descriptionWeight
              ),
            ),
            SizedBox(width: 20),
            Text(
              text,
              style: GoogleFonts.montserrat(
                color: Colors.black,
                fontSize: MyFont.subsubSize,
                decoration: TextDecoration.none,
                fontWeight: MyFont.subsubWeight
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40,
      margin: EdgeInsets.all(5),
      child: Material(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () {
                print('Button Backward tapped!');
              },
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  border: Border.all()
                ),
                child: Center(
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                print('Button Flag tapped!');
              },
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  border: Border.all()
                ),
                child: Center(
                  child: Icon(
                    Icons.flag,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                print('Button Forward tapped!');
                Navigator.push(context, MaterialPageRoute(builder: (context) => Evaluation()));
              },
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  border: Border.all()
                ),
                child: Center(
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}