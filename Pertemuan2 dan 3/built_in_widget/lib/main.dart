import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// text widget,image widget,button,input,scaffold

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("tes"),
        ),
        body: Container(
          child: ListView(
            children: [
              Text("Text Widget", style: TextStyle(fontSize: 30)),
              Text(
                "This is widget Text",
                style: TextStyle(fontSize: 30, color: Colors.red),
              ),
              Container(
                child: Image(
                    image: NetworkImage(
                        "https://img.freepik.com/free-photo/front-view-sweet-chocolate-cake_23-2148834059.jpg?size=626&ext=jpg&ga=GA1.1.2134439342.1693880415&semt=sph")),
              ),
              Container(
                margin: EdgeInsets.only(top: 20, left: 30, right: 30),
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    // <-- Icon
                    Icons.download,
                    size: 24.0,
                  ),
                  label: Text('Download Image'), // <-- Text
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: TextField(
                  obscureText: false,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Enter name",
                      hintText: 'Enter Your Name'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// date pciker
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Contoh Date Picker',
//       home: MyHomePage(title: 'Contoh Date Picker'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key? key, required this.title}) : super(key: key);

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   late DateTime selectedDate = DateTime.now();

//   Future<void> _selectDate(BuildContext context) async {
//     final DateTime? picked = await showDatePicker(
//       context: context,
//       initialDate: selectedDate,
//       firstDate: DateTime(2001, 1),
//       lastDate: DateTime(2101),
//     );
//     if (picked != null && picked != selectedDate) {
//       setState(() {
//         selectedDate = picked;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text("${selectedDate.toLocal()}".split(' ')[0]),
//             SizedBox(height: 20.0),
//             ElevatedButton(
//               style:
//                   ElevatedButton.styleFrom(backgroundColor: Colors.green[400]),
//               onPressed: () async {
//                 await _selectDate(context);
//                 print(
//                     "${selectedDate.day} ${selectedDate.month} ${selectedDate.year}");
//               },
//               child: Text('Pilih Tanggal'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// alert dialog
// class MyApp extends StatelessWidget {
//   int _count = 0;
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: MyLayout(),
//       ),
//     );
//   }
// }

// class MyLayout extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(60.0),
//       child: ElevatedButton(
//         child: Text(
//           'Show alert',
//           style: TextStyle(color: Colors.black, fontSize: 20),
//         ),
//         style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
//         onPressed: () {
//           showAlertDialog(context);
//         },
//       ),
//     );
//   }
// }

// showAlertDialog(BuildContext context) {
//   Widget okButton = TextButton(
//     child: Text("OK"),
//     onPressed: () {},
//   );
//   AlertDialog alert = AlertDialog(
//     title: Text("Alertt!!!"),
//     content: Text("Good luck:)"),
//     actions: [
//       okButton,
//     ],
//   );
//   showDialog(
//     context: context,
//     builder: (BuildContext context) {
//       return alert;
//     },
//   );
// }
