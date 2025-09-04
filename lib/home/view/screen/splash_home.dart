// import 'package:digital_tasbeeh/core/style/text_style.dart';
// import 'package:digital_tasbeeh/home/view/screen/start_home.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//
// class Splashhome extends StatefulWidget {
//   const Splashhome({super.key});
//
//   @override
//   State<Splashhome> createState() => _SplashScreenState();
// }
//
// class _SplashScreenState extends State<Splashhome> {
//   na() {
//     Future.delayed(
//       Duration(seconds: 3),
//           () => Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (context) => Starthome()),
//       ),
//     );
//   }
//
//   @override
//   void initState() {
//     na();
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         width: double.infinity,
//         decoration: BoxDecoration(
//           color: Colors.blueGrey.shade900,
//
//         ),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Container(
//                 padding: EdgeInsets.all(2),
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   border: Border.all(
//                     color: Colors.blueGrey.shade900,
//                     width: 5,
//                   ),
//                 ),
//                 child: CircleAvatar(
//                   radius: 60,
//                   backgroundImage:AssetImage("assets/images/img_8.png") ,
//                 ),
//               ),
//               SizedBox(height: 20,),
//               Text(
//                 "سبح",
//                 style: text,
//               ),
//               SizedBox(height: 20,),
//             ],
//           ),
//         ),
//     );
//   }
// }
