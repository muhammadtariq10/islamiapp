// import 'package:flutter/material.dart';
// import 'dart:math' as math;

// class Sebha extends StatefulWidget {
//   @override
//   State<Sebha> createState() => _SebhaState();
// }

// class _SebhaState extends State<Sebha> {
//   double _rotation = 0;
//   void _rotateImage() {
//     setState(() {
//       _rotation += math.pi / 4; // تدور بمقدار 45 درجة (ربع دائرة)
//     });
//     @override
//     Widget build(BuildContext context) {
//       return Scaffold(
//         backgroundColor: Colors.transparent,
//         body: Center(
//           child: GestureDetector(
//             onTap: _rotateImage,
//             child: Transform.rotate(
//               angle: _rotation,
//               child: Image.asset(
//                   'assets/images/body_sebha_logo.png'), // تأكد من أن المسار إلى صورتك صحيح
//             ),
//           ),
//         ),
//       );
//     }
//   }
// }

import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:islamiapp/theme.dart';

class SebhaTap extends StatefulWidget {
  @override
  _SebhaTapState createState() => _SebhaTapState();
}

class _SebhaTapState extends State<SebhaTap> {
  double _rotation = 0;
  int _counter = 0;
  List<String> sebhaNam = [
    "سبحان الله",
    "الحمدالله",
    "استغفرالله",
  ];
  int _currensebhanameIndex = 0;

  void _rotateImage() {
    setState(() {
      _rotation += math.pi / 4; // تدور بمقدار 45 درجة (ربع دائرة)
      _counter++;
      if (_counter % 33 == 0) {
        _currensebhanameIndex = (_currensebhanameIndex + 1) % sebhaNam.length;
      }
    });
  }

  void clearCounter() {
    setState(() {
      _counter = 0;
      _currensebhanameIndex = 0;
      _rotation = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.09,
          ),
          Container(
            child: Text(
              "عدد التسبيحات",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: AppTheme.primary,
                borderRadius: BorderRadius.circular(25)),
            height: MediaQuery.of(context).size.height * 0.08,
            width: MediaQuery.of(context).size.width * 0.30,
            child: Center(
              child: Text("$_counter",
                  style: Theme.of(context).textTheme.titleLarge),
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Container(
            decoration: BoxDecoration(
                color: AppTheme.primary,
                borderRadius: BorderRadius.circular(25)),
            height: MediaQuery.of(context).size.height * 0.08,
            width: MediaQuery.of(context).size.width * 0.30,
            child: Center(
              child: Text(sebhaNam[_currensebhanameIndex],
                  style: Theme.of(context).textTheme.titleLarge),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          InkWell(
            onTap: clearCounter,
            child: Container(
              child: Text(
                "Clear",
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.09,
          ),
          Expanded(
            child: Center(
              child: GestureDetector(
                onTap: _rotateImage,
                child: Transform.rotate(
                  angle: _rotation,
                  child: Image.asset(
                      'assets/images/Group 9.png'), // تأكد من أن المسار إلى صورتك صحيح
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
