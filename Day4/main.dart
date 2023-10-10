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
      home: Nun(),
    );
  }
}
class Nun extends StatefulWidget {
   Nun({super.key});

  @override

  State<Nun> createState() => _NunState();
  final cont =TextEditingController();
}

class _NunState extends State<Nun> {
  final textcontroll = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

          appBar: AppBar(
            title: const Text('hello world'),
          ),
      body:Container(


        child: Column( children: [
          TextField(
            controller: textcontroll,
            decoration: InputDecoration(hintText:"Search",border: OutlineInputBorder(),
                suffixIcon: IconButton(onPressed: (){textcontroll.clear();}, icon: Icon(Icons.clear))),)
        ],),

      )

    );
  }
}