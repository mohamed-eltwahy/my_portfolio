import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutMeText extends StatelessWidget {
  final TextAlign? textAlign;
  final double fontSize;

  const AboutMeText({this.textAlign, required this.fontSize});

  TextStyle _textStyle(double fSize, bool bold) {
    return GoogleFonts.montserrat(
      fontSize: fSize,
      fontWeight: !bold ? FontWeight.w100 : FontWeight.w400,
      letterSpacing: 1.0,
      height: 2.0,
      color: Colors.white,
    );
  }

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: textAlign ?? TextAlign.left,
      text: TextSpan(children: [
        TextSpan(
          text:
              "Hi There! I'm Mohammed, a Flutter developer,\n\nI have been developing mobile apps about 1 year now, I developed apps with appealing UI and robust performance. ",
          style: MediaQuery.of(context).size.width < 600
              ? _textStyle(fontSize, false)
              : _textStyle(fontSize + 2, false),
        ),
        TextSpan(
          text:
              "Graduated from Faculty of computers and information Mansoura university,\n\n department of computer science 2016-2020.",
          style: MediaQuery.of(context).size.width < 600
              ? _textStyle(fontSize, true)
              : _textStyle(fontSize + 2, true),
        ),
      ]),
    );
  }
}
