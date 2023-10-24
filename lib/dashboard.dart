// // ignore_for_file: prefer_const_constructors

// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:musicapp/functions/Functions.dart';
// import 'package:musicapp/home.dart';
// import 'package:musicapp/main.dart';
// import 'package:musicapp/search.dart';

// class Dashboard extends StatefulWidget {
//   const Dashboard({super.key});

//   @override
//   State<Dashboard> createState() => _DashboardState();
// }

// class _DashboardState extends State<Dashboard> {
//   var index;
//   var height, width;
//   @override
//   Widget build(BuildContext context) {
//     height = MediaQuery.of(context).size.height;
//     width = MediaQuery.of(context).size.width;
//     return Scaffold(
//         backgroundColor: Colors.black,
//         bottomNavigationBar: BottomNavigationBar(
//           items: const [
//             BottomNavigationBarItem(
//               icon: Icon(
//                 Icons.home,
//               ),
//               label: 'Home',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(
//                 Icons.search,
//               ),
//               label: 'Search',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(
//                 Icons.book,
//               ),
//               label: 'Saved',
//             )
//           ],
//           onTap: (value) {
//             setState(() {
//               index = value;
//               if (index == 0) {
//                 Navigator.pushNamed(context, '/Homepage');
//               } else if (index == 1) {
//                 Navigator.pushNamed(context, '/Searchpage');
//               }
//             });
//           },
//           // currentIndex: index,
//           backgroundColor: Colors.grey[800],
//           selectedItemColor: Colors.deepPurple[300],
//           unselectedItemColor: Colors.white,
//           elevation: 10,
//         ),
//         body: Home());
//   }
// }
