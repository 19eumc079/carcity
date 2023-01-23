part of styles;

class AppFonts {
  static TextStyle getAppFont({
    FontWeight? fontWeight,
    double? fontSize,
    Color? color,
  }) {
    return GoogleFonts.inter(
        textStyle: TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    ));
  }
}

class HeaderFonts {
  static final primaryText = AppFonts.getAppFont(
    fontSize: 33,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
  static final secontaryText = AppFonts.getAppFont(
    fontSize: 33,
    fontWeight: FontWeight.bold,
    color: TextColor.secondaryColor,
  );
}

// class TextFont{
//    static final primaryText = AppFonts.getAppFont(
//     fontSize: 33,
//     fontWeight: FontWeight.bold,
//     color: TextColor.secondaryColor,
//    );

// }


 
