import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class cals extends StatefulWidget {
  const cals({super.key});

  @override
  State<cals> createState() => _calsState();
}

class _calsState extends State<cals> {
  var first = TextEditingController();
  var second = TextEditingController();

  var title1 = 'Enter first value';
  var title2 = 'Enter second value';
  var total = 'Result value';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            height: 450,
            width: 355,
            color: Colors.greenAccent,
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  child: Text(
                    'Simple Calculater',
                    style: GoogleFonts.aBeeZee(fontSize: 20),
                  ),
                  height: 60,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(27.0, 0, 0, 0),
                      child: Container(
                        child: TextField(
                          controller: first,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.blueAccent,
                            hintText: title1,
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black,
                                ),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ),
                        height: 50,
                        width: 300,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: TextField(
                      controller: second,
                      onChanged: (value) {
                        setState(() {
                          title1 = value;
                        });
                      },
                      decoration: InputDecoration(
                        filled: true,
                        hintText: title2,
                        fillColor: Colors.blueAccent,
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    height: 50,
                    width: 300,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(27.0, 0, 0, 0),
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              var firstnumber = int.parse(first.text);
                              var secondnumber = int.parse(second.text);
                              var result = firstnumber + secondnumber;
                              total = result.toString();
                            });
                          },
                          child: Container(
                            height: 45,
                            width: 45,
                            color: Colors.orange,
                            child: Center(
                                child: Text(
                              '+',
                              style:
                                  TextStyle(fontSize: 30, color: Colors.black),
                            )),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              var firstnumber = int.parse(first.text);
                              var secondnumber = int.parse(second.text);
                              var result = firstnumber - secondnumber;
                              total = result.toString();
                            });
                          },
                          child: Container(
                            height: 45,
                            width: 45,
                            color: Colors.orange,
                            child: Center(
                                child: Text(
                              '-',
                              style:
                                  TextStyle(fontSize: 30, color: Colors.black),
                            )),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              var firstnumber = int.parse(first.text);
                              var secondnumber = int.parse(second.text);
                              var result = firstnumber * secondnumber;
                              total = result.toString();
                            });
                          },
                          child: Container(
                            height: 45,
                            width: 45,
                            color: Colors.orange,
                            child: Center(
                                child: Text(
                              '*',
                              style:
                                  TextStyle(fontSize: 30, color: Colors.black),
                            )),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              var firstnumber = int.parse(first.text);
                              var secondnumber = int.parse(second.text);
                              var result = firstnumber / secondnumber;
                              total = result.toString();
                            });
                          },
                          child: Container(
                            height: 45,
                            width: 45,
                            color: Colors.orange,
                            child: Center(
                                child: Text(
                              '/',
                              style:
                                  TextStyle(fontSize: 30, color: Colors.black),
                            )),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
                  child: Center(
                    child: Container(
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.yellow),
                      child: Center(child: Text(total)),
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
