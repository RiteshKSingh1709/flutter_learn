import 'package:flutter/material.dart';
import '../shared/menu_drawer.dart';
import '../shared/menu_bottom.dart';

class BMICalculator extends StatefulWidget {
  const BMICalculator({Key? key}) : super(key: key);
  @override
  _BmiScreenState createState() {
    return _BmiScreenState();
  }
}

class _BmiScreenState extends State<BMICalculator> {
  String result = '';
  bool isMetric = true;
  bool isImperial = false;
  double? height;
  double? weight;
  double fontSize = 18;
  late List<bool> isSelected;

  @override
  void initState() {
    isSelected = [
      isMetric,
      isImperial
    ];

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // The title text which will be shown on the action bar
          title: Text("BMI Screen"),
        ),
        drawer: MenuDrawer(),
        bottomNavigationBar: MenuBottom(),
        body: Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          ToggleButtons(
              borderRadius: BorderRadius.circular(10),
              children: [
                Padding(padding: EdgeInsets.symmetric(horizontal: 16), child: Text('Metric', style: TextStyle(fontSize: fontSize))),
                Padding(padding: EdgeInsets.symmetric(horizontal: 16), child: Text('Imperial', style: TextStyle(fontSize: fontSize))),
              ],
              isSelected: isSelected,
              onPressed: toggleMeasure),
        ]));
  }

  void toggleMeasure(value) {
    if (value == 0) {
      isMetric = true;
      isImperial = false;
    } else {
      isMetric = false;
      isImperial = true;
    }

    setState(() {
      isSelected = [
        isMetric,
        isImperial
      ];
    });
  }
}
