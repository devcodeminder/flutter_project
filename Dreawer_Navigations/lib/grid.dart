import 'package:flutter/material.dart';

class grid extends StatefulWidget {
  const grid({super.key});

  @override
  State<grid> createState() => _gridState();
}

class _gridState extends State<grid> {
  @override
  Widget build(BuildContext context) {
    List<String> image = [
      '../assets/BigMenu/zyyduavcmpinwpyontgb.jpeg',
      '../assets/BigMenu/bogj3f009rjyo7b5omgx.jpeg'
    ];
    return GridView.count(
      childAspectRatio: 2,
      crossAxisCount: 3,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Image.asset('../assets/1.jpg'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Image.asset('../assets/2.jpg'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Image.asset('../assets/3.jpg'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Image.asset('../assets/4.jpg'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Image.asset('../assets/5.jpg'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Image.asset('../assets/6.jpg'),
          ),
        ),
      ],
    );
  }
}
