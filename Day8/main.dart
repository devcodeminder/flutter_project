import 'package:flutter/material.dart';
import 'video.dart';



void main(){
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final List value=[
    'fist','second','third','fourth','five'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     home: Scaffold(
       appBar: AppBar(title: Text('DevCodeMinder',style: TextStyle(color: Colors.amber),),backgroundColor: Colors.black,
       ),
       body: Container(

         child: ListView.builder(
             itemCount: value.length,

             itemBuilder:
                 (context,index)
    {
           return vid(txt:value[index],);

    }

     ),
       ),
     )
    );
  }
}
