import 'dart:convert';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Listview(),
    );
  }
}

class Listview extends StatefulWidget {
  const Listview({super.key});

  @override
  State<Listview> createState() => _ListviewState();
}

class _ListviewState extends State<Listview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('hello'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Container(
              height: 70,
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    child: SizedBox.fromSize(
                      child: Image.network(
                        'https://static.toiimg.com/thumb/msid-99576352,width-128'
                        '0,resizemode-4/99576352.jpg',
                        height: 60,
                        width: 60,
                      ),
                    ),
                  ),
                  Text(
                    ' Guy1',
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  Text('Hey hai')
                ],
              ),
              color: Colors.greenAccent,
            ),
            Container(
              height: 70,
              color: Colors.blueGrey,
              child: Row(
                children: [
                  SizedBox(
                    width: 1200,
                  ),
                  Text('hai'),
                  SizedBox(
                    width: 30,
                  ),
                  Text('Guy2'),
                  SizedBox(
                    child: Image.network(
                      'https://static.toiimg.com/thumb/msid-99576352,width-128'
                      '0,resizemode-4/99576352.jpg',
                      height: 60,
                      width: 60,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 70,
              color: Colors.greenAccent,
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    child: Image.network(
                      'https://static.toiimg.com/thumb/msid-99576352,width-128'
                      '0,resizemode-4/99576352.jpg',
                      height: 60,
                      width: 60,
                    ),
                  ),
                  Text(
                    ' Guy1',
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  Text('hai')
                ],
              ),
            ),
            Container(
              height: 70,
              color: Colors.blueGrey,
              child: Row(
                children: [
                  SizedBox(
                    width: 1200,
                  ),
                  Text('hai'),
                  SizedBox(
                    width: 30,
                  ),
                  Text('Guy2'),
                  SizedBox(
                    child: Image.network(
                      'https://static.toiimg.com/thumb/msid-99576352,width-128'
                      '0,resizemode-4/99576352.jpg',
                      height: 60,
                      width: 60,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 70,
              color: Colors.greenAccent,
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    child: Image.network(
                      'https://static.toiimg.com/thumb/msid-99576352,width-128'
                      '0,resizemode-4/99576352.jpg',
                      height: 60,
                      width: 60,
                    ),
                  ),
                  Text(
                    ' Guy1',
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  Text('bye')
                ],
              ),
            ),
            Container(
              height: 70,
              color: Colors.blueGrey,
              child: Row(
                children: [
                  SizedBox(
                    width: 1200,
                  ),
                  Text('bye'),
                  SizedBox(
                    width: 30,
                  ),
                  Text('Guy2'),
                  SizedBox(
                    child: Image.network(
                      'https://static.toiimg.com/thumb/msid-99576352,width-128'
                      '0,resizemode-4/99576352.jpg',
                      height: 60,
                      width: 60,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              child: TextField(
                style: TextStyle(fontSize: 25),
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                  hintText: 'Message',
                  prefixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.emoji_emotions_outlined)),
                  suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.send,
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
