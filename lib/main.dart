import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   int sugoma = 0;

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//   }

//   @override
//   void dispose() {
//     // TODO: implement dispose
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.lightGreen,
//           title: const Text('Bebrix'),
//         ),
//         // body: Container(
//         //   child: const Text('Tung Sahur💀'),
//         //   margin: EdgeInsets.all(10),
//         //   padding: EdgeInsets.all(10),
//         // ),
//         //
//         // body: Row(
//         //   mainAxisAlignment: MainAxisAlignment.center,
//         //   crossAxisAlignment: CrossAxisAlignment.end,
//         //   children: const [
//         //     Expanded(flex: 1, child: Icon(Icons.abc)),
//         //     Icon(Icons.add_alarm_outlined),
//         //     Icon(Icons.add_call),
//         //   ],
//         // ),
//         // body: Stack(
//         //   children: [
//         //     Container(color: Colors.red, height: 100, width: 100),
//         //     Align(alignment: Alignment.center, child: Icon(Icons.verified)),
//         //   ],
//         // ),
//         // body: ListView(
//         //   scrollDirection: Axis.vertical,
//         //   children: [
//         //     Container(color: Colors.red, height: 500, width: 100),
//         //     Container(color: Colors.green, height: 500, width: 100),
//         //     Container(color: Colors.blueAccent, height: 500, width: 100),
//         //     Align(alignment: Alignment.center, child: Icon(Icons.verified)),
//         //   ],
//         // ),
//         body: ListView.builder(
//           itemBuilder: (_, index) {
//             return Center(
//               child: Column(
//                 children: [
//                   Container(
//                     color: randomColor(),
//                     width: 500,
//                     height: 500,
//                     child: Text('$sugoma'),
//                   ),
//                 ],
//               ),
//             );
//           },
//           scrollDirection: Axis.vertical,
//         ),
//         floatingActionButton: FloatingActionButton(
//           child: Icon(Icons.plus_one),
//           onPressed: () {
//             setState(() {
//               sugoma++;
//             });
//           },
//         ),
//         bottomNavigationBar: BottomNavigationBar(
//           items: const [
//             BottomNavigationBarItem(
//               icon: Icon(Icons.holiday_village),
//               label: 'bab',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.architecture),
//               label: 'basasab',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.dark_mode),
//               label: 'aaaaa',
//             ),
//           ],
//         ),
//         drawer: Drawer(child: Text(sugoma.toString() + 'Spumamamma!!!')),
//       ),
//     );
//   }
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Your App', home: AboutUs());
  }
}

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: const Text('Bebrix'),
      ),
      body: IconButton(
        icon: Hero(
          tag: 'img',
          child: Image.network(
            'https://static.wikia.nocookie.net/shipping/images/3/37/Sparkle_H3RD.png',
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
        ),
        iconSize: 10,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => AboutScreen()),
          );
        },
      ),
    );
  }
}

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: const Text('nahhhh cookinggg!!'),
      ),
      body: Hero(
        tag: 'img',
        child: Image.network(
          'https://static.wikia.nocookie.net/shipping/images/3/37/Sparkle_H3RD.png',
        ),
      ),
    );
  }
}

Color randomColor() {
  final random = Random();
  return Color.fromARGB(
    255, // Full opacity
    random.nextInt(256), // Red: 0–255
    random.nextInt(256), // Green: 0–255
    random.nextInt(256), // Blue: 0–255
  );
}
