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
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Assignment1',
              style: TextStyle(color: Colors.black),
            ),
            elevation: 0,
            leading: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    color: Colors.black,
                  )),
            ],
          ),
          body: ListView(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
                child: MenuItem(color: Colors.cyan,),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
                child: MenuItem(color: Colors.teal,),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
                child: MenuItem(color: Colors.red[400],),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
                child: MenuItem(color: Colors.green[800],),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
                child: MenuItem(color: Colors.blue,),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
                child: MenuItem(color: Colors.pink[600],),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
                child: MenuItem(color: Colors.purple[600],),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
                child: MenuItem(color: Colors.orange[400],),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
                child: MenuItem(color: Colors.brown[800],),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
                child: MenuItem(color: Colors.yellow[400],),
              ),
            ],
          )),
    );
  }
}

class MenuItem extends StatelessWidget {
  final Color? color;
  const MenuItem({super.key, required this.color});

  @override
  Widget build(BuildContext context) {

    return Expanded(
        child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: color
      ),
      child: const Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Top left",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                "Center",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Text(
                "bottom right",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}