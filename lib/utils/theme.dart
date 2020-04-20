import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

const Color white = Colors.white;
const Color black = Colors.black;

themeData(context) => ThemeData(
      brightness: Brightness.light,
      textTheme: GoogleFonts.muliTextTheme(Theme.of(context).textTheme),
      primarySwatch: Colors.blue,
      primaryColor: DnDColors.blue,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
