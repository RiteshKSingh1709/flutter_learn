import 'package:flutter/material.dart';
import '../shared/menu_drawer.dart';
import '../shared/menu_bottom.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  final double borderRadius = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text("Globe App"),
      ),
      drawer: MenuDrawer(),
      body: Container(
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/beach.jpg'), fit: BoxFit.cover)),
        child: Center(
          child: Container(
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
              ),
              child: Text("Hello World",
                  style: TextStyle(
                      fontSize: 22,
                      shadows: [
                        Shadow(offset: Offset(1.0, 1.0), blurRadius: 2.0),
                      ],
                      color: Colors.grey),
                  textAlign: TextAlign.center)),
        ),
      ),
      bottomNavigationBar: MenuBottom(),
    );
  }
}
