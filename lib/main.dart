import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

void main() {
  runApp(MyApp()); // open app
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(title: 'My App', home: MyAppPage());
  }
}

class MyAppPage extends StatefulWidget {
  const MyAppPage({Key? key}) : super(key: key);

  @override
  _MyAppPageState createState() => _MyAppPageState();
}

class _MyAppPageState extends State<MyAppPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color(0xFF1B262C),
      appBar: AppBar(
        centerTitle: true,
        title: Text("Tam Kor Dai", style: TextStyle(fontSize: 25)),
        backgroundColor: Color(0xFF1B262C),
        elevation: 0,
      ),
      floatingActionButton: SpeedDial(
        marginEnd: 30,
        marginBottom: 30,
        backgroundColor: Color(0xFF3282B8),
        icon: Icons.add,
        activeIcon: Icons.add,
        buttonSize: 70.0,
        visible: true,
        closeManually: false,
        overlayOpacity: 0.05,
        /// If true overlay will render no matter what.
        renderOverlay: false,
        curve: Curves.bounceIn,
        tooltip: 'Speed Dial',
        heroTag: 'speed-dial-hero-tag',
        foregroundColor: Colors.white,
        elevation: 8.0,
        shape: CircleBorder(),
        // orientation: SpeedDialOrientation.Up,
        // childMarginBottom: 2,
        // childMarginTop: 2,
        children: [
          SpeedDialChild(
            child: Icon(Icons.add_task), //Icons.assignment_turned_in_rounded
            backgroundColor: Color(0xFFBBE1FA),
            label: 'New TODO',
            labelStyle: TextStyle(fontSize: 18.0),
          ),
          SpeedDialChild(
            child: Icon(Icons.layers_outlined),
            backgroundColor: Color(0xFFBBE1FA),
            label: 'New TODO group',
            labelStyle: TextStyle(fontSize: 18.0),
          ),
        ],
      ),
    );
  }
}
