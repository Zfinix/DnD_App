import 'package:dnd_app/utils/colors.dart';
import 'package:dnd_app/utils/margin.dart';
import 'package:dnd_app/utils/theme.dart';
import 'package:dnd_app/widgets/customDndButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Intro extends StatelessWidget {
  const Intro({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MediaQuery.removePadding(
        removeTop: true,
        context: context,
        child: ListView(
          physics: ClampingScrollPhysics(),
          children: <Widget>[
            Container(
              height: screenHeight(context, percent:1.15),
              width: screenWidth(context),
              child: Column(
                children: <Widget>[
                  Flexible(
                    child: SectionOne(),
                  ),
                  Flexible(
                    child: SectionTwo(),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SectionOne extends StatefulWidget {
  const SectionOne({
    Key key,
  }) : super(key: key);

  @override
  _SectionOneState createState() => _SectionOneState();
}

class _SectionOneState extends State<SectionOne> {
  final controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: white,
      child: Column(
        children: <Widget>[
          Expanded(
            child: PageView(
              controller: controller,
              children: List.generate(
                  3,
                  (_) => Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SvgPicture.asset(
                            "assets/images/intro_illustration.svg",
                            height: 218,
                          ),
                        ],
                      )),
            ),
          ),
          Container(
            child: SmoothPageIndicator(
              controller: controller,
              count: 3,
              effect: WormEffect(
                  dotHeight: 8,
                  dotWidth: 8,
                  dotColor: DnDColors.grey,
                  activeDotColor: Color(0xffC4C4C4)),
            ),
          ),
          const YMargin(26)
        ],
      ),
    );
  }
}

class SectionTwo extends StatelessWidget {
  const SectionTwo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: screenHeight(context),
        color: DnDColors.blue,
        child: Padding(
          padding: const EdgeInsets.all(28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              RichText(
                text: TextSpan(
                  text: "Get things done\nwith",
                  style: GoogleFonts.muli(
                    textStyle: TextStyle(
                        color: white,
                        fontWeight: FontWeight.normal,
                        fontSize: 28),
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: " To-Do.",
                      style: GoogleFonts.muli(
                        textStyle: TextStyle(
                            color: white,
                            fontWeight: FontWeight.w800,
                            fontSize: 32),
                      ),
                    )
                  ],
                ),
              ),
              const YMargin(16),
              Text(
                "Create an account to track your tasks and projects on any device. It’s free.",
                style: GoogleFonts.muli(
                  textStyle: TextStyle(
                      color: white,
                      fontWeight: FontWeight.w300,
                      fontSize: 16,
                      height: 1.4),
                ),
              ),
              const YMargin(27),
              CustomDndButton(
                image: "google",
                authProvider: 'Google',
                onTap: () {},
              ),
              const YMargin(20),
              CustomDndButton(
                image: "facebook",
                authProvider: 'Facebook',
                onTap: () {},
              ),
              const YMargin(20),
              CustomDndButton(
                image: "dashicons_email",
                authProvider: 'Email',
                onTap: () {},
                isOutline: true,
              ),
              const YMargin(27),
            ],
          ),
        ));
  }
}
