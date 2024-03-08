import 'package:flutter/material.dart';
class ApplicationThemeManager{
  static const Color primaryColor=Color(0xFF5D9CEC);

  static ThemeData lightTheme= ThemeData(
      primaryColor: primaryColor,
    scaffoldBackgroundColor: const Color(0xFFDFECDB),
    bottomAppBarTheme: BottomAppBarTheme(
      color: Colors.white,
      padding: EdgeInsets.zero,

    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: primaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
        side: BorderSide(
            color: Colors.white,
             width: 4
        )
      )
    ),
    bottomNavigationBarTheme:BottomNavigationBarThemeData(
      elevation: 0,
      type:BottomNavigationBarType.fixed,
      backgroundColor:Colors.transparent,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedIconTheme: IconThemeData(
        color: primaryColor,
        size: 38,
      ),
      unselectedIconTheme: IconThemeData(
        color: Color(0xFFC8C9CB),
        size: 30,
      )


    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontFamily: "Poppins",
        fontWeight: FontWeight.bold,
        fontSize: 22,
        color: Colors.black,
      ),
      bodyLarge: TextStyle(
        fontFamily: "Poppins",
        fontWeight: FontWeight.w400,
        fontSize: 20,
        color: Colors.black,
      ),
      bodyMedium: TextStyle(
        fontFamily: "Poppins",
        fontWeight: FontWeight.bold,
        fontSize: 18,
        color: Colors.black,
      ),
      bodySmall: TextStyle(
        fontFamily: "Poppins",
        fontWeight: FontWeight.bold,
        fontSize: 14,
        color: Colors.black,
      ),
      displayLarge: TextStyle(
        fontFamily: "Poppins",
        fontWeight: FontWeight.bold,
        fontSize: 15,
        color: Colors.black,
      ),
    ),
  );
  static ThemeData DarkTheme= ThemeData(
    scaffoldBackgroundColor: const Color(0xFF060E1E),
    bottomAppBarTheme: BottomAppBarTheme(
      color: Color(0xFF141922),
      padding: EdgeInsets.zero,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: primaryColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
            side: BorderSide(
                color: Color(0xFF060E1E),
                width: 4
            )
        )
    ),
    bottomNavigationBarTheme:BottomNavigationBarThemeData(
      elevation: 0,
        type:BottomNavigationBarType.fixed,
        backgroundColor:Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedIconTheme: IconThemeData(
          color: primaryColor,
          size: 38,
        ),
        unselectedIconTheme: IconThemeData(
          color: Color(0xFFC8C9CB),
          size: 30,
        )


    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontFamily: "Poppins",
        fontWeight: FontWeight.bold,
        fontSize: 22,
        color: Colors.white,
      ),
      bodyLarge: TextStyle(
        fontFamily: "Poppins",
        fontWeight: FontWeight.w400,
        fontSize: 20,
        color: Colors.white,
      ),
      bodyMedium: TextStyle(
        fontFamily: "Poppins",
        fontWeight: FontWeight.bold,
        fontSize: 18,
        color: Colors.white,
      ),
      bodySmall: TextStyle(
        fontFamily: "Poppins",
        fontWeight: FontWeight.bold,
        fontSize: 14,
        color: Colors.white,
      ),
      displayLarge: TextStyle(
        fontFamily: "Poppins",
        fontWeight: FontWeight.bold,
        fontSize: 15,
        color: Colors.white,
      ),
    ),
  );
}