import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// A Contoh Button
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(title: Text("Contoh Button")),
//         body: Container(
//           padding: EdgeInsets.only(left: 10, right: 10),
//           child: TextButton(
//             child: Text(
//               "Button",
//               style: TextStyle(color: Colors.white, fontSize: 20),
//             ),
//             onPressed: () {},
//             style: TextButton.styleFrom(
//                 backgroundColor: Colors.red,
//                 padding: EdgeInsets.only(left: 15, right: 15)),
//           ),
//         ),
//       ),
//     );
//   }
// }

// B. contoh alignment
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//           appBar: AppBar(title: Text("Contoh Alignment")),
//           body: Container(
//             alignment: Alignment.bottomCenter,
//             child: Text(
//               'Semangat Belajar',
//               style: TextStyle(fontSize: 20),
//             ),
//           )),
//     );
//   }
// }

// C. contoh color
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//           appBar: AppBar(title: Text("Contoh Color")),
//           body: Container(
//             margin: EdgeInsets.all(50),
//             height: 200,
//             width: 200,
//             color: Colors.amber[900],
//             alignment: Alignment.center,
//             child: Text(
//               'Semangat Belajar',
//               style: TextStyle(fontSize: 20, color: Colors.white),
//             ),
//           )),
//     );
//   }
// }

// D property height and weight
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//           appBar: AppBar(title: Text("Contoh Height and Weight")),
//           body: Container(
//             margin: EdgeInsets.all(50),
//             height: 200,
//             width: 200,
//             alignment: Alignment.center,
//             color: Colors.blueGrey,
//             child: Text(
//               'Semangat Belajar',
//               style: TextStyle(fontSize: 20, color: Colors.white),
//             ),
//           )),
//     );
//   }
// }

// E property margin
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//           appBar: AppBar(title: Text("Contoh Margin")),
//           body: Container(
//             margin: EdgeInsets.all(50),
//             height: 200,
//             width: 200,
//             alignment: Alignment.topLeft,
//             color: Colors.blueGrey,
//             child: Text(
//               'Semangat Belajar Flutter',
//               style: TextStyle(fontSize: 20, color: Colors.white),
//             ),
//           )),
//     );
//   }
// }

// F .contoh padding
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(title: Text("Contoh Padding")),
          body: Container(
            padding: EdgeInsets.only(left: 20),
            margin: EdgeInsets.all(20),
            height: 200,
            width: 200,
            alignment: Alignment.topLeft,
            color: Colors.blueGrey,
            child: Text(
              'Ayo Belajar Flutter',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          )),
    );
  }
}

// G property transform
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//           appBar: AppBar(title: Text("Contoh Transform")),
//           body: Container(
//             decoration: BoxDecoration(
//                 image: const DecorationImage(
//                     image: NetworkImage(
//                         "https://pixnio.com/free-images/2017/03/07/2017-03-07-10-59-39-900x600.jpg"),
//                     fit: BoxFit.fitWidth),
//                 border: Border.all(
//                   color: Colors.black,
//                   width: 8,
//                 )),
//             height: 200,
//             width: 300,
//             margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 30),
//             transform: Matrix4.rotationZ(-0.1),
//           )),
//     );
//   }
// }

//h property decoration
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Contoh Configuration"),
//         ),
//         body: Container(
//           decoration: BoxDecoration(
//             color: const Color(0xff7c94b6),
//             image: const DecorationImage(
//               image: NetworkImage(
//                 'https://pixnio.com/free-images/2018/12/02/2018-12-02-19-17-12.jpg',
//               ),
//               fit: BoxFit.fitWidth,
//             ),
//             border: Border.all(
//               color: Colors.black,
//               width: 8,
//             ),
//             borderRadius: BorderRadius.circular(12),
//           ),
//           height: 200,
//           width: 400,
//           margin: EdgeInsets.all(20),
//         ),
//       ),
//     );
//   }
// }

//2.6.2 row dan column
//column widget
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("Contoh Column Widget")),
//         body: Column(
//           children: [
//             Container(
//               color: Colors.purpleAccent,
//               child: FlutterLogo(
//                 size: 90.0,
//               ),
//             ),
//             Container(
//               color: Colors.greenAccent,
//               child: FlutterLogo(
//                 size: 90.0,
//               ),
//             ),
//             Container(
//               color: Colors.orangeAccent,
//               child: FlutterLogo(
//                 size: 90.0,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

//row widget
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("Contoh Row Widget")),
//         body: Row(
//           children: [
//             Container(
//               color: Colors.purpleAccent,
//               child: FlutterLogo(
//                 size: 90.0,
//               ),
//             ),
//             Container(
//               color: Colors.greenAccent,
//               child: FlutterLogo(
//                 size: 90.0,
//               ),
//             ),
//             Container(
//               color: Colors.orangeAccent,
//               child: FlutterLogo(
//                 size: 90.0,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

//2.6.3 stack
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(title: Text("Contoh Stack Widget")),
//         body: Stack(
//           children: <Widget>[
//             Container(
//               color: Colors.green,
//               alignment: Alignment.bottomCenter,
//               child: Text("Satu",
//                   style: TextStyle(fontSize: 30, color: Colors.white)),
//             ),
//             Container(
//               color: Colors.red,
//               alignment: Alignment.bottomCenter,
//               child: Text("Dua",
//                   style: TextStyle(fontSize: 30, color: Colors.white)),
//               height: 400.0,
//               width: 300.0,
//             ),
//             Container(
//               color: Colors.deepPurple,
//               alignment: Alignment.bottomCenter,
//               child: Text("Tiga",
//                   style: TextStyle(fontSize: 30, color: Colors.white)),
//               height: 200.0,
//               width: 200.0,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

//2.6.4 listview
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(title: Text("Contoh ListVeiw Widget")),
//         body: ListView(
//           children: <Widget>[
//             Container(
//               color: Colors.green,
//               alignment: Alignment.topLeft,
//               child: Text(
//                 "ListView widget digunanakan untuk menampilkan data dalam bentuk list dan jika datanya melebihi dari render box maka halaman tersebut dapat di scroll.",
//                 style: TextStyle(fontSize: 30, color: Colors.white),
//               ),
//             ),
//             Container(
//               color: Colors.red,
//               alignment: Alignment.topLeft,
//               child: Text(
//                   "ListView widget digunanakan untuk menampilkan data dalam bentuk list dan jika datanya melebihi dari render box maka halaman tersebut dapat di scroll.",
//                   style: TextStyle(fontSize: 30, color: Colors.white)),
//               height: 400.0,
//               width: 300.0,
//             ),
//             Container(
//               color: Colors.deepPurple,
//               alignment: Alignment.topLeft,
//               child: Text(
//                 "ListView widget digunanakan untuk menampilkan data dalam bentuk list dan jika datanya melebihi dari render box maka halaman tersebut dapat di scroll.",
//                 style: TextStyle(fontSize: 30, color: Colors.white),
//               ),
//               height: 200.0,
//               width: 200.0,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

//2.6.5 gridview
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Contoh GridView Widget"),
//         ),
//         body: GridView.count(
//           crossAxisCount: 2,
//           children: <Widget>[
//             Container(
//               color: Colors.green,
//               alignment: Alignment.center,
//               child: Text("1",
//                   style: TextStyle(fontSize: 30, color: Colors.white)),
//             ),
//             Container(
//               color: Colors.red,
//               alignment: Alignment.center,
//               child: Text("2",
//                   style: TextStyle(fontSize: 30, color: Colors.white)),
//               height: 400.0,
//               width: 300.0,
//             ),
//             Container(
//               color: Colors.deepPurple,
//               alignment: Alignment.center,
//               child: Text("3",
//                   style: TextStyle(fontSize: 30, color: Colors.white)),
//               height: 200.0,
//               width: 200.0,
//             ),
//             Container(
//               color: Colors.blueGrey,
//               alignment: Alignment.center,
//               child: Text("4",
//                   style: TextStyle(fontSize: 30, color: Colors.white)),
//               height: 200.0,
//               width: 200.0,
//             ),
//             Container(
//               color: Colors.cyan[800],
//               alignment: Alignment.center,
//               child: Text("5",
//                   style: TextStyle(fontSize: 30, color: Colors.white)),
//               height: 200.0,
//               width: 200.0,
//             ),
//             Container(
//               color: Colors.yellow[800],
//               alignment: Alignment.center,
//               child: Text("6",
//                   style: TextStyle(fontSize: 30, color: Colors.white)),
//               height: 200.0,
//               width: 200.0,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
