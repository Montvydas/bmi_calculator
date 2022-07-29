import 'package:flutter/material.dart';

import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: InputPage(),
    );
  }
}

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final title = 'Beautiful';

//     return MaterialApp(
//       title: title,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text(title),
//           backgroundColor: Colors.pinkAccent,
//         ),
//         body: Container(
//           decoration: BoxDecoration(
//             image: DecorationImage(
//               image: NetworkImage(
//                   'https://i.pinimg.com/originals/bc/60/b6/bc60b62c9097e3c6b848c20037d1d5d3.png'),
//               fit: BoxFit.fill,
//             ),
//           ),
//           child: GridView.count(
//             // Create a grid with 2 columns. If you change the scrollDirection to
//             // horizontal, this produces 2 rows.
//             crossAxisCount: 2,
//             // Generate 100 widgets that display their index in the List.
//             children: List.generate(100, (index) {
//               return Container(
//                 width: double.infinity,
//                 height: double.infinity,
//                 margin: EdgeInsets.all(15),
//                 child: Column(
//                   // crossAxisAlignment: CrossAxisAlignment.stretch,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[
//                     Text(
//                       'Item $index',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 30,
//                       ),
//                     ),
//                   ],
//                 ),
//                 decoration: BoxDecoration(
//                   color: Colors.pinkAccent.withAlpha(0x50),
//                   borderRadius: BorderRadius.circular(15.0),
//                 ),
//               );
//             }),
//           ),
//         ),
//       ),
//     );
//   }
// }
