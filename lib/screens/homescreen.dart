import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool onOff = false;
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        return  SafeArea(
          child: Scaffold(
            appBar: AppBar(
              actions: [
                Switch(value: onOff, onChanged: (value) {
                  setState(() {
                    onOff = value;
                  });
                },),
              ],
              title: Text("Flutter"),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator(),
                  SizedBox(height: 30,),
                  Text("${orientation.name}",style: TextStyle(fontSize: 30, letterSpacing: 2, fontWeight: FontWeight.bold,color: Colors.teal.shade900)),
                  SizedBox(height: 30,),
                  LinearProgressIndicator(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
