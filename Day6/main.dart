import 'package:flutter/material.dart';
import 'func.dart';


void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     home: Scaffold(
       appBar: AppBar(title: Text('DevCodeMinder',style: TextStyle(color: Colors.amber),),backgroundColor: Colors.black,
       ),
       body: ListView.builder(itemBuilder: (context,index)

    {

           return func();
    }
     ),
     )
    );
  }
}
