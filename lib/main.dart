import 'package:flutter/material.dart';
import 'package:track_map_clean/main_page.dart';

void main() {
  runApp(const TrackMapClean());
}
class TrackMapClean extends StatelessWidget {
  const TrackMapClean({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Track Map Clean',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainPage(),
    );
  }

}