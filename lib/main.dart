import 'package:flutter/material.dart';
import 'package:track_map_clean/intro.dart';

import 'trash_map.dart';

void main() {
  runApp(const TrackMapCleanApp());
}

class TrackMapCleanApp extends StatelessWidget {
  const TrackMapCleanApp({Key? key}) : super(key: key);
  
  static const String _title = 'Track Map Clean App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
          primaryColor: Colors.green[800]
      ),
      home: TrackMapCleanAppWidget(),
    );
  }

}


class TrackMapCleanAppWidget extends StatefulWidget {
  const TrackMapCleanAppWidget({Key? key}) : super(key: key);

  @override
  State<TrackMapCleanAppWidget> createState() => _TrackMapCleanAppWidget();
}

class _TrackMapCleanAppWidget extends State<TrackMapCleanAppWidget> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
  Intro(),
  Intro(),
  TrashMap(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Track Map Clean'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Add trash',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Show map',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}