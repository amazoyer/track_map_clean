import 'package:flutter/material.dart';

import 'add_trash.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(context, new AddTrash(), color, Icons.add , 'ADD TRASH'),
        _buildButtonColumn(context, new AddTrash(), color, Icons.map, 'SHOW TRASH'),
      ],
    );

    Widget textSection = const Padding(
      padding: EdgeInsets.all(32),
      child: Text(
        'You can use this app to add trash you see on a map, and then some other people who is less lenivy than you can go a collect it a bit. This is an amazing app developed by Orejko for Adel for very skrope price. ',
        softWrap: true,
      ),
    );

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
                    buttonSection,
                    SizedBox(height: 10),

                    textSection,
        	            ],
        	          ),
    	        ),
    	      );
  }


  Column _buildButtonColumn(BuildContext context, Widget widget, Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),

          child:
          TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return widget;
                }));
              },    child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          )),
        ),
      ],
    );
  }

}