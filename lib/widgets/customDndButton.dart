import 'package:dnd_app/utils/colors.dart';
import 'package:dnd_app/utils/margin.dart';
import 'package:dnd_app/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomDndButton extends StatelessWidget {
  final VoidCallback onTap;
  final String image, authProvider;
  final bool isOutline;

  const CustomDndButton({
    Key key,
    this.onTap,
    @required this.image,
    @required this.authProvider,
    this.isOutline = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 43,
      width: double.infinity,
      child: !isOutline
          ? FlatButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              //padding: EdgeInsets.all(14),
              color: white,
              onPressed: onTap,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const XMargin(10),
                  SvgPicture.asset(
                    "assets/icons/$image.svg",
                    height: 16,
                  ),
                  XMargin(screenWidth(context, percent: 0.15)),
                  Center(
                    child: Text(
                      "Continue with $authProvider",
                      style: GoogleFonts.muli(
                        textStyle: TextStyle(
                            color: DnDColors.textColor,
                            fontWeight: FontWeight.normal,
                            fontSize: 14),
                      ),
                    ),
                  ),
                  Spacer(
                    flex: 3,
                  ),
                ],
              ),
            )
          : OutlineButton(
              borderSide: BorderSide(
                color: white,
                width: 1.5,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              //padding: EdgeInsets.all(14),
              color: white,
              onPressed: onTap,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const XMargin(10),
                  SvgPicture.asset(
                    "assets/icons/$image.svg",
                    height: 16,
                  ),
                  XMargin(screenWidth(context, percent: 0.15)),
                  Center(
                    child: Text(
                      "Continue with $authProvider",
                      style: GoogleFonts.muli(
                        textStyle: TextStyle(
                            color: white,
                            fontWeight: FontWeight.normal,
                            fontSize: 14),
                      ),
                    ),
                  ),
                  Spacer(
                    flex: 3,
                  ),
                ],
              ),
            ),
    );
  }
}
