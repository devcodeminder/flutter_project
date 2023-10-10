import 'package:flutter/material.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("hello world"),
          backgroundColor: Colors.deepOrange,
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.access_alarm)),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.add_chart_rounded))
          ],
          leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        ),
      ),
    );
  }
}
