import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreen,
          title: const Text('Bebrix'),
        ),
        // body: Container(
        //   child: const Text('Tung Sahur💀'),
        //   margin: EdgeInsets.all(10),
        //   padding: EdgeInsets.all(10),
        // ),
        //
        // body: Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   crossAxisAlignment: CrossAxisAlignment.end,
        //   children: const [
        //     Expanded(flex: 1, child: Icon(Icons.abc)),
        //     Icon(Icons.add_alarm_outlined),
        //     Icon(Icons.add_call),
        //   ],
        // ),
        body: Stack(
          children: [
            Container(color: Colors.red, height: 100, width: 100),
            Align(alignment: Alignment.center, child: Icon(Icons.verified)),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.plus_one),
          onPressed: () {},
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.holiday_village),
              label: 'bab',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.architecture),
              label: 'basasab',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.dark_mode),
              label: 'aaaaa',
            ),
          ],
        ),
      ),
    );
  }
}
