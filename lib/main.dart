import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}
class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double _currentSliderValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider Demo"),
      ),
      body: Center(
        child: Slider(min: 0,
            max: 100,
            divisions: 50,
            label: _currentSliderValue.round().toString(),
            value: _currentSliderValue, onChanged: ( value){
          setState(() {

            _currentSliderValue = value;
          });
        }),
      ),
    );
  }
}
