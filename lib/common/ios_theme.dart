import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

// 🍎 iOS Color System
class IOSColors {
  // Primary Colors
  static const systemBlue = Color(0xFF007AFF);
  static const systemGreen = Color(0xFF34C759);
  static const systemRed = Color(0xFFFF3B30);
  static const systemOrange = Color(0xFFFF9500);
  static const systemYellow = Color(0xFFFFCC00);
  static const systemPurple = Color(0xFFAF52DE);
  
  // Background Colors
  static const systemBackground = Color(0xFFFFFFFF);
  static const secondarySystemBackground = Color(0xFFF2F2F7);
  static const tertiarySystemBackground = Color(0xFFFFFFFF);
  
  // Grouped Background Colors
  static const systemGroupedBackground = Color(0xFFF2F2F7);
  static const secondarySystemGroupedBackground = Color(0xFFFFFFFF);
  static const tertiarySystemGroupedBackground = Color(0xFFF2F2F7);
  
  // Label Colors
  static const label = Color(0xFF000000);
  static const secondaryLabel = Color(0x99000000);
  static const tertiaryLabel = Color(0x4D000000);
  static const quaternaryLabel = Color(0x2E000000);
  
  // Separator Colors
  static const separator = Color(0x49000000);
  static const opaqueSeparator = Color(0xFFC6C6C8);
  
  // Fill Colors
  static const systemFill = Color(0x33787880);
  static const secondarySystemFill = Color(0x29787880);
  static const tertiarySystemFill = Color(0x1F767680);
  static const quaternarySystemFill = Color(0x14747480);
}

// 🍎 iOS Theme Configuration
class IOSTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    
    // Color Scheme
    colorScheme: ColorScheme.light(
      primary: IOSColors.systemBlue,
      secondary: IOSColors.systemGreen,
      error: IOSColors.systemRed,
      surface: IOSColors.systemBackground,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: IOSColors.label,
    ),
    
    // Scaffold
    scaffoldBackgroundColor: IOSColors.systemGroupedBackground,
    
    // AppBar
    appBarTheme: AppBarTheme(
      backgroundColor: IOSColors.systemBackground,
      foregroundColor: IOSColors.label,
      elevation: 0,
      scrolledUnderElevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.w600,
        color: IOSColors.label,
        letterSpacing: -0.41,
      ),
    ),
    
    // Card
    cardTheme: CardTheme(
      color: IOSColors.secondarySystemGroupedBackground,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    ),
    
    // Input Decoration
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: IOSColors.tertiarySystemFill,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide.none,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: IOSColors.systemBlue, width: 2),
      ),
      contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    ),
    
    // Button
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: IOSColors.systemBlue,
        foregroundColor: Colors.white,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        textStyle: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w600,
          letterSpacing: -0.41,
        ),
      ),
    ),
    
    // Text Button
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: IOSColors.systemBlue,
        textStyle: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w400,
          letterSpacing: -0.41,
        ),
      ),
    ),
    
    // Icon
    iconTheme: IconThemeData(
      color: IOSColors.systemBlue,
      size: 28,
    ),
    
    // Divider
    dividerTheme: DividerThemeData(
      color: IOSColors.separator,
      thickness: 0.5,
      space: 1,
    ),
    
    // Bottom Navigation Bar
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: IOSColors.systemBackground,
      selectedItemColor: IOSColors.systemBlue,
      unselectedItemColor: IOSColors.secondaryLabel,
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      selectedLabelStyle: TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w500,
      ),
      unselectedLabelStyle: TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w400,
      ),
    ),
    
    // List Tile
    listTileTheme: ListTileThemeData(
      tileColor: IOSColors.secondarySystemGroupedBackground,
      contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      dense: false,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      iconColor: IOSColors.secondaryLabel,
      textColor: IOSColors.label,
    ),
    
    // Floating Action Button
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: IOSColors.systemBlue,
      foregroundColor: Colors.white,
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
    ),
    
    // Dialog
    dialogTheme: DialogTheme(
      backgroundColor: IOSColors.secondarySystemGroupedBackground,
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
      titleTextStyle: TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.w600,
        color: IOSColors.label,
        letterSpacing: -0.41,
      ),
      contentTextStyle: TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w400,
        color: IOSColors.label,
        letterSpacing: -0.08,
      ),
    ),
    
    // Bottom Sheet
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: IOSColors.secondarySystemGroupedBackground,
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(14)),
      ),
      modalBackgroundColor: IOSColors.secondarySystemGroupedBackground,
      modalElevation: 8,
    ),
  );
}

// 🍎 iOS Typography
class IOSTypography {
  // Large Title (34pt)
  static const TextStyle largeTitle = TextStyle(
    fontSize: 34,
    fontWeight: FontWeight.w700,
    letterSpacing: 0.37,
    height: 1.2,
  );
  
  // Title 1 (28pt)
  static const TextStyle title1 = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w700,
    letterSpacing: 0.36,
    height: 1.2,
  );
  
  // Title 2 (22pt)
  static const TextStyle title2 = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w700,
    letterSpacing: 0.35,
    height: 1.2,
  );
  
  // Title 3 (20pt)
  static const TextStyle title3 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.38,
    height: 1.2,
  );
  
  // Headline (17pt semibold)
  static const TextStyle headline = TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w600,
    letterSpacing: -0.41,
    height: 1.3,
  );
  
  // Body (17pt regular)
  static const TextStyle body = TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w400,
    letterSpacing: -0.41,
    height: 1.3,
  );
  
  // Callout (16pt)
  static const TextStyle callout = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    letterSpacing: -0.32,
    height: 1.3,
  );
  
  // Subheadline (15pt)
  static const TextStyle subheadline = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    letterSpacing: -0.24,
    height: 1.3,
  );
  
  // Footnote (13pt)
  static const TextStyle footnote = TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w400,
    letterSpacing: -0.08,
    height: 1.3,
  );
  
  // Caption 1 (12pt)
  static const TextStyle caption1 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    height: 1.3,
  );
  
  // Caption 2 (11pt)
  static const TextStyle caption2 = TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.07,
    height: 1.3,
  );
}

// 🍎 iOS Animations
class IOSAnimations {
  // Standard iOS animation duration
  static const Duration standard = Duration(milliseconds: 350);
  static const Duration quick = Duration(milliseconds: 200);
  static const Duration slow = Duration(milliseconds: 500);
  
  // iOS Curves
  static const Curve easeInOut = Curves.easeInOut;
  static const Curve easeOut = Curves.easeOut;
  static const Curve spring = Curves.easeOutBack;
  
  // Page transition
  static PageRouteBuilder<T> pageRoute<T>({
    required Widget page,
    RouteSettings? settings,
  }) {
    return PageRouteBuilder<T>(
      settings: settings,
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0);
        const end = Offset.zero;
        final tween = Tween(begin: begin, end: end);
        final offsetAnimation = animation.drive(tween);
        
        return SlideTransition(
          position: offsetAnimation,
          child: child,
        );
      },
      transitionDuration: standard,
    );
  }
  
  // Modal transition
  static PageRouteBuilder<T> modalRoute<T>({
    required Widget page,
    RouteSettings? settings,
  }) {
    return PageRouteBuilder<T>(
      settings: settings,
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        final tween = Tween(begin: begin, end: end);
        final offsetAnimation = animation.drive(tween);
        
        return SlideTransition(
          position: offsetAnimation,
          child: child,
        );
      },
      transitionDuration: standard,
      barrierDismissible: true,
      barrierColor: Colors.black54,
      opaque: false,
    );
  }
}

// 🍎 iOS Spacing
class IOSSpacing {
  static const double xs = 4;
  static const double sm = 8;
  static const double md = 16;
  static const double lg = 24;
  static const double xl = 32;
  static const double xxl = 48;
}

// 🍎 iOS Border Radius
class IOSRadius {
  static const double sm = 8;
  static const double md = 10;
  static const double lg = 14;
  static const double xl = 20;
  static const double round = 999;
}

// 🍎 Legacy Theme Color (برای سازگاری با کد قدیمی)
class ThemeColor {
  static final backgroundColor = IOSColors.systemGroupedBackground;
  static final foregroundColor = IOSColors.label;
}
