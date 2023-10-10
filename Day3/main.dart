import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Nun(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Nun extends StatefulWidget {
  const Nun({Key? key}) : super(key: key);

  @override
  State<Nun> createState() => Nunlevel();
}

class Nunlevel extends State<Nun> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Natures",
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.nature))],
        leading: IconButton(
            onPressed: () {}, icon: const Icon(Icons.nature_people_rounded)),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white38,
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 400,
              color: Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    width: 50,
                  ),
                  Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLZA11yAKyDjLpphz4H6L1YRbrVZOAhROGJg&usqp=CAU",
                    alignment: Alignment.bottomLeft,
                    filterQuality: FilterQuality.high,
                    colorBlendMode: BlendMode.modulate,
                  ),
                  const SizedBox(width: 230),
                  Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnDNNu7Q3ilvWOWV_pKmOdYR56TKwbvhOFgQ&usqp=CAU",
                    alignment: Alignment.center,
                    filterQuality: FilterQuality.high,
                    colorBlendMode: BlendMode.modulate,
                  ),
                  const SizedBox(width: 200),
                  Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-uNs3G450sqCqWCVEGNBsFScnGrYMSxMdmw&usqp=CAU",
                    alignment: Alignment.topRight,
                    filterQuality: FilterQuality.high,
                    colorBlendMode: BlendMode.modulate,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
