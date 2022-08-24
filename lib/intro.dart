import 'package:flutter/material.dart';

class Intro extends StatelessWidget {
  const Intro({super.key});

  final Widget textSection = const Padding(
    padding: EdgeInsets.all(32),
    child: Text(
      'You can use this app to add trash you see on a map, and then some other people who is less lenivy than you can go a collect it a bit. This is an amazing app developed by Orejko for Adel for very skrope price. ',
      softWrap: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trash Clean map',
      home: Scaffold(
        body: Column(
          children: [
            Image.asset(
              'images/collect_trash.jpg',
              width: 600,
              height: 403,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 10),
            textSection,
          ],
        ),
      ),
    );
  }
}