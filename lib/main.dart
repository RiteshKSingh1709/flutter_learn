import 'package:flutter/material.dart';
import 'screens/intro_screen.dart';
import 'screens/bmi_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // Application name
        title: 'Flutter Hello World',
        // Application theme data, you can set the colors for the application as
        // you want
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
        ),
        // A widget which will be started on application startup
        initialRoute: '/',
        routes: {
          '/': (context) => IntroScreen(),
          '/bmi': (context) => BMICalculator()
        });
  }
}
