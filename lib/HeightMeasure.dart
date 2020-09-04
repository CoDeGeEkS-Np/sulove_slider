import 'package:flutter/material.dart';
import 'package:sulove_slider/Slider_Thumb_React.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter  Slider',
      home: MyHomePage(title: 'Flutter Slider Demo'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  int height = 180;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Sulove Flutter Slider Demo',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 50.0,
            ),
            Text(
              "SET YOUR HEIGHT",
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 30.0),
            ),
            SizedBox(
              height: 50.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: <Widget>[
                Text(
                  height.toString(),
                  style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.w900),
                ),
                Text("cm")
              ],
            ),
            Slider(
              value: height.toDouble(),
              min: 80,
              max: 220,
              inactiveColor: Colors.red,
              activeColor: Colors.green,
              onChanged: (double value) {
                setState(() {
                  height = value.round();
                });
              },
            ),
            Text("Just slide the  Slider to change value"),
            SizedBox(height: 30,),

          ],
        ),
      ),
    );
  }
}
