import 'package:flutter/material.dart';

class AppTheme {
  static const Color background = Color(0xFF000000); 
  static const Color textBase = Color(0xFFE0F4FF); 
  static const Color textSecondary = Color(0xFF88A1B0); 
  
  static const Color tronBlue = Color(0xFF6FFFFF);   
  static const Color tronOrange = Color(0xFFFF9933); 
  static const Color tronRed = Color(0xFFF03A17);     
  static const Color tronCyanIcon = Color(0xFF00E5E5); 

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: tronBlue, 
    scaffoldBackgroundColor: background,
    
    appBarTheme: const AppBarTheme(
      backgroundColor: background, 
      elevation: 0,
      iconTheme: IconThemeData(
        color: tronCyanIcon, 
      ),
    ),

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: background,
      selectedItemColor: tronBlue, 
      unselectedItemColor: textSecondary, 
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: false,
      selectedLabelStyle: const TextStyle(
        fontFamily: 'monospace',
        fontWeight: FontWeight.bold,
      ),
    ),

    textTheme: const TextTheme(
      bodyLarge: TextStyle(
        color: textBase,
        fontSize: 16,
        height: 1.5,
        fontFamily: 'monospace', 
      ),
      headlineMedium: TextStyle(
        color: textBase, 
        fontWeight: FontWeight.w700,
        fontSize: 20,
        fontFamily: 'monospace',
      ),
    ),
  );
}