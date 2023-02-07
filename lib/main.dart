import 'dart:async';
import 'dart:ui';

import 'package:auto_dark_light_mode_splashscreen/themes/light.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/homescreen.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        'home' : (context) => HomeScreen(),
        '/' : (context) => Spleshscreen(),
      },
      theme: lighttheme,//ThemeData(appBarTheme: AppBarTheme(backgroundColor: Colors.teal),brightness: Brightness.light),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
    ),
  );

  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.teal.shade900,systemNavigationBarColor: Colors.white,),);
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
}

class Spleshscreen extends StatefulWidget {
  const Spleshscreen({Key? key}) : super(key: key);

  @override
  State<Spleshscreen> createState() => _SpleshscreenState();
}

class _SpleshscreenState extends State<Spleshscreen> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3),() {
      Navigator.pushReplacementNamed(context, 'home');
    },);
    return Scaffold(body: Center(child: FlutterLogo(size: 50  ),),);
  }
}

