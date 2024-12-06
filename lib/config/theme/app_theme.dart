import 'package:flutter/material.dart';

class AppTheme { //En flutter es más facil trabajar con clases
  ThemeData getTheme () => ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
  );
} 