import 'package:flutter/material.dart';

class vid extends StatelessWidget {
  final String txt;
 vid({required this.txt});

  @override
  Widget build(BuildContext context) {
    return
        Container(

          child: Text(txt),
        );

  }
}
