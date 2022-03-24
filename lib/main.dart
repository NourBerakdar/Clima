import 'package:flutter/material.dart';
import 'screens/loading_screen.dart';
import 'package:sizer/sizer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
        builder: (context, orientation, deviceType) {
          return
            MaterialApp(
              theme: ThemeData.dark(),
              home: LoadingScreen(),

            );
        }
    );
  }
}
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Sizer(
//       builder: (context, orientation, deviceType) {
//         return MaterialApp(
//           theme: ThemeData.dark(),
//           home: LoadingScreen(),
//         );
//       },
//     );
//   }
// }