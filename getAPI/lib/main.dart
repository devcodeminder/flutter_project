import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'api.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Main(),
    );
  }
}

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  var location = TextEditingController();
  var area;
  String data = '';
  var jsonDecode;
  bool isLoading = true;
  _MainState() {
    getTeams();
  }

  Future<void> getTeams() async {
    try {
      var response = await http.get(Uri.parse(
          'https://api.tomorrow.io/v4/timelines?location=${area}&fields=temperature&timesteps=1h&units=metric&apikey=nrriINo9uC1LvDWrmOlMbPOjzEOjzZXC'));
      if (response.statusCode == 200) {
        setState(() {
          data = jsonDecode(response.body).toString();
        });
      } else {}
    } catch (error) {
      //hi
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : Container(
              child: Column(
                children: [
                  TextField(
                    controller: location,
                    decoration: InputDecoration(hintText: 'enter a cityname'),
                    onChanged: (value) {
                      setState(() {
                        area();
                      });
                    },
                  ),
                  TextButton(
                      onPressed: () {
                        getTeams();
                      },
                      child: Text('Click')),
                  Text(data)
                ],
              ),
            ),
    );
  }
}
