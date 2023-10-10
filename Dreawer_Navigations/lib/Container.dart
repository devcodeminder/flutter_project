import 'package:flutter/material.dart';

void main() {
  runApp(const Con());
}

class Con extends StatelessWidget {
  const Con({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('hello world'),
        ),
        body: Container(
          child: Column(
            children: [
              Container(
                color: Colors.pink,
                height: 150,
                width: double.infinity,
                child: Column(
                  children: [
                    Container(
                      height: 20,
                      width: 200,
                      color: Colors.yellow,
                      child: const Text('first container'),
                    ),
                    Container(
                      height: 20,
                      width: 200,
                      child: const Text('second container'),
                      color: Colors.brown,
                    ),
                    Container(
                      height: 20,
                      width: 200,
                      child: const Text('third container'),
                      color: Colors.green,
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.lime,
                height: 150,
                width: double.infinity,
                child: Column(
                  children: [
                    Container(
                      height: 20,
                      width: 200,
                      child: const Text('first container'),
                      color: Colors.red,
                    ),
                    Container(
                      height: 20,
                      width: 200,
                      child: Text('second container'),
                      color: Colors.blue,
                    ),
                    Container(
                      height: 20,
                      width: 200,
                      child: Text('third container'),
                      color: Colors.green,
                    )
                  ],
                ),
              ),
              Container(
                color: Colors.purple,
                height: 150,
                width: double.infinity,
                child: Row(
                  children: [
                    Container(
                      height: 20,
                      width: 200,
                      child: const Text('first container '),
                      color: Colors.white,
                    ),
                    Container(
                      height: 20,
                      width: 200,
                      child: Text('second container'),
                      color: Colors.lightGreen,
                    ),
                    Container(
                      height: 20,
                      width: 200,
                      child: Text('Third container'),
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
