import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Container.dart';
import 'cals.dart';
import 'grid.dart';
import 'home.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home(),
    );
  }
}

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('My_App'),
          backgroundColor: Colors.orange,
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: 'home',
              ),
              Tab(
                icon: Icon(Icons.call),
                text: 'Call',
              ),
              Tab(
                icon: Icon(Icons.video_call),
                text: 'video_call',
              )
            ],
          ),
        ),
        body: TabBarView(children: [
          Container(
            child: Center(
                child: Text(
              'home',
              style: GoogleFonts.aboreto(),
            )),
          ),
          Container(
            child: Center(
              child: Text(
                'Call',
                style: GoogleFonts.abyssinicaSil(),
              ),
            ),
          ),
          Container(
            child: Center(
                child: Text(
              'Video_call',
              style: GoogleFonts.abyssinicaSil(),
            )),
          ),
        ]),
        drawer: Drawer(
          child: ListView(children: [
            UserAccountsDrawerHeader(
              accountName: Text('Mind_Master'),
              accountEmail: Text('Devcodeminder@Official'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('../assets/mind_master.jpg'),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Home()));
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Row&Column'),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Con()));
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Container'),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Con()));
              },
            ),
            ListTile(
              leading: Icon(Icons.grid_4x4),
              title: Text('Grid'),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => grid()));
              },
            ),
            ListTile(
              leading: Icon(Icons.calculate),
              title: Text('Cals'),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => cals()));
              },
            )
          ]),
        ),
      ),
    );
  }
}
