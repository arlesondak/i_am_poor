import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('I am poor.'),
        centerTitle: true,
        backgroundColor: Colors.redAccent[500],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            image: AssetImage('images/1d9w_29na_170805.jpg')
          ),
          GestureDetector(
            child: Text('Poor Vectors by Vecteezy'),
            onTap: (){
              _launchURL();
            },
          ),
        ],
      ),
    ),
  ),
  );
}

_launchURL() async {
  const url = 'https://www.vecteezy.com/free-vector/poor';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
