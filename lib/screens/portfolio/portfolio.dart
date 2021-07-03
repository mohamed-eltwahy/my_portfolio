import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/screens/widgets/bottomAnimation.dart';
import 'package:my_portfolio/screens/widgets/projectCard.dart';

import '../../constants.dart';

class Portfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.02, vertical: height * 0.02),
      child: Column(
        children: [
          Text(
            "\nPortfolio",
            style: GoogleFonts.montserrat(
              fontSize: height * 0.06,
              fontWeight: FontWeight.w100,
              letterSpacing: 1.0,
            ),
          ),
          Text(
            "Here are few samples of my previous work :)\n\n",
            style: GoogleFonts.montserrat(fontWeight: FontWeight.w200),
          ),
          SizedBox(
            height: width > 1200 ? height * 0.45 : width * 0.4,
            child: ListView.separated(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return VerticalDivider(
                  color: Colors.transparent,
                  width: width * 0.015,
                );
              },
              itemBuilder: (context, index) {
                return WidgetAnimator(
                  child: ProjectCard(
                    projectIconData: null,
                    cardWidth: width < 1200 ? width * 0.25 : width * 0.35,
                    cardHeight: width < 1200 ? height * 0.2 : height * 0.3,
                    backImage: kProjectsBanner[index],
                    projectIcon: kProjectsIcons[index],
                    projectTitle: kProjectsTitles[index],
                    projectDescription: kProjectsDescriptions[index],
                    projectLink: kProjectsLinks[index],
                    bottomWidget: index == 1
                        ? Image.network(
                            "https://img.icons8.com/material-sharp/384/ffffff/google-play.png",
                            height: height * 0.04,
                          )
                        : Container(),
                  ),
                );
              },
              itemCount: kProjectsLinks.length,
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          // MaterialButton(
          //   hoverColor: kPrimaryColor.withAlpha(150),
          //   shape: RoundedRectangleBorder(
          //       borderRadius: BorderRadius.circular(5.0),
          //       side: BorderSide(color: kPrimaryColor)),
          //   onPressed: () {
          //     launchURL("https://github.com/mohamed-eltwahy");
          //   },
          //   child: Text(
          //     "See More",
          //     style: GoogleFonts.montserrat(
          //       fontWeight: FontWeight.w200,
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
