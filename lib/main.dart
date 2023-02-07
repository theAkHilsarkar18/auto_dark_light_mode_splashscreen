import 'package:flutter/material.dart';
import 'screens/homescreen.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => HomeScreen(),
      },
      theme: ThemeData(appBarTheme: AppBarTheme(backgroundColor: Colors.teal),brightness: Brightness.light),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
    ),
  );

  
}
