import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Michael!'),
          centerTitle: true,
          backgroundColor: Colors.redAccent[500],
        ),
        body: Column(children: <Widget>[
            // Row 1
            Row(
              children: [
                Container(
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Image(
                            image: AssetImage('images/Michael Jackson.png'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ], // Children
            ),
            // Row 2
            Row(
              children: [
                Container(
                  child: Row(
                    children: [
                      Column(
                        children: [
                          GestureDetector(
                            child: Text('Image Attribution'),
                            onTap: (){
                              print('pressed!');
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

