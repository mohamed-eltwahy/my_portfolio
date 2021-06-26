import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:my_portfolio/screens/widgets/entranceFader.dart';
import 'package:my_portfolio/screens/widgets/socialMediaIcon.dart';

import '../../constants.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return  Container(
        height: height,
        width: double.infinity,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(width * 0.07, height * 0.12, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "HEY THERE! ",
                        style: GoogleFonts.montserrat(
                            fontSize: height * 0.025,
                            fontWeight: FontWeight.w200),
                      ),
                      Image.asset(
                        "assets/hi.gif",
                        height: height * 0.03,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Text(
                    "Muhammad",
                    style: GoogleFonts.montserrat(
                        fontSize: height * 0.055,
                        fontWeight: FontWeight.w100,
                        letterSpacing: 1.1),
                  ),
                  Text(
                    "Saber",
                    style: GoogleFonts.montserrat(
                        fontSize: height * 0.055, fontWeight: FontWeight.w500),
                  ),
                  EntranceFader(
                    offset: Offset(-10, 0),
                    delay: Duration(seconds: 1),
                    duration: Duration(milliseconds: 800),
                    child: Row(
                      children: [
                        Icon(
                          Icons.play_arrow_rounded,
                          color: kPrimaryColor,
                        ),
                        TyperAnimatedTextKit(
                            isRepeatingAnimation: true,
                            speed: Duration(milliseconds: 80),
                            textStyle: GoogleFonts.montserrat(
                                fontSize: height * 0.03,
                                fontWeight: FontWeight.w200),
                            text: [
                              " Flutter Developer",
                            ]),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.035,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      for (int i = 0; i < kSocialIcons.length; i++)
                        SocialMediaIconBtn(
                          icon: kSocialIcons[i],
                          socialLink: kSocialLinks[i],
                          height: height * 0.02,
                          horizontalPadding: 10.0,
                        )
                    ],
                  )
                ],
              ),
            ),
            Opacity(
              opacity: 0.7,
              child: EntranceFader(
                offset: Offset(0, 0),
                delay: Duration(seconds: 1),
                duration: Duration(milliseconds: 800),
                child: Image.asset(
                  'assets/9.png',
                  fit: BoxFit.contain,
                  height: 250,
                ),
              ),
            ),
          ],
        ),
    
    );
  }
}
