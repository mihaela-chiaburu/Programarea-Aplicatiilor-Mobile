import 'package:flutter/material.dart';
//import 'package:get/get.dart';
//import 'package:restaurnat_app/pages/MainController.dart';
import 'package:recipes_app/pages/main_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}




// import 'package:flutter/material.dart';
// import 'package:svg_flutter/svg.dart';

// void main() {
//   runApp(const MainApp());
// }

// class MainApp extends StatelessWidget {
//   const MainApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         backgroundColor: Colors.white,
//         body: SafeArea(
//           child: Padding(
//             padding: EdgeInsets.only(left: 30, top: 30),
//             child: Column(
//               children: [
//                 Padding(
//                   padding: EdgeInsets.only(right: 30),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       const Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             "Hello Jega",
//                             style: TextStyle(
//                               color: Color.fromARGB(255, 0, 0, 0),
//                               fontSize: 20,
//                               fontFamily: 'Poppins',
//                               fontWeight: FontWeight.w600,
//                             ),
//                           ),
//                           Text(
//                             "What are you cooking today?",
//                             style: TextStyle(
//                               color: Color(0xFFA9A9A9),
//                               fontSize: 11,
//                               fontFamily: 'Poppins',
//                               fontWeight: FontWeight.w400,
//                             ),
//                           ),
//                         ],
//                       ),
//                       Image.asset('resources/icons/avatar.png'),
//                     ],
//                   ),
//                 ),
//                 SizedBox(height: 30),
//                 Padding(
//                   padding: EdgeInsets.only(right: 30),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Container(
//                         padding: EdgeInsets.only(left: 10, bottom: 11, top: 11),
//                         width: 255,
//                         height: 40,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10),
//                           color: const Color.fromARGB(255, 255, 255, 255),
//                           border: Border.all(
//                             width: 1.3,
//                             color: Color(0xFFD9D9D9),
//                           ),
//                         ),
//                         child: Row(
//                           children: [
//                             SvgPicture.asset(
//                               'resources/icons/search-normal.svg',
//                               height: 18,
//                               width: 18,
//                             ),
//                             SizedBox(width: 10),
//                             Text(
//                               "Search recipe",
//                               style: TextStyle(
//                                 color: const Color(0xFFD9D9D9),
//                                 fontSize: 11,
//                                 fontFamily: 'Poppins',
//                                 fontWeight: FontWeight.w400,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       SvgPicture.asset('resources/icons/filter.svg'),
//                     ],
//                   ),
//                 ),
//                 SizedBox(height: 25),
//                 SingleChildScrollView(
//                   scrollDirection: Axis.horizontal,
//                   child: Row(
//                     children: [
//                       Container(
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10),
//                           color: Color(0xFF129575),
//                         ),
//                         padding: EdgeInsets.symmetric(
//                           vertical: 7,
//                           horizontal: 20,
//                         ),
//                         child: Text(
//                           "All",
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 11,
//                             fontFamily: 'Poppins',
//                             fontWeight: FontWeight.w600,
//                           ),
//                         ),
//                       ),
//                       Container(
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10),
//                           color: Colors.white,
//                         ),
//                         padding: EdgeInsets.symmetric(
//                           vertical: 7,
//                           horizontal: 20,
//                         ),
//                         child: Text(
//                           "Indian",
//                           style: TextStyle(
//                             color: Color(0xFF71B1A1),
//                             fontSize: 11,
//                             fontFamily: 'Poppins',
//                             fontWeight: FontWeight.w600,
//                           ),
//                         ),
//                       ),
//                       Container(
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10),
//                           color: Colors.white,
//                         ),
//                         padding: EdgeInsets.symmetric(
//                           vertical: 7,
//                           horizontal: 20,
//                         ),
//                         child: Text(
//                           "Italian",
//                           style: TextStyle(
//                             color: Color(0xFF71B1A1),
//                             fontSize: 11,
//                             fontFamily: 'Poppins',
//                             fontWeight: FontWeight.w600,
//                           ),
//                         ),
//                       ),
//                       Container(
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10),
//                           color: Colors.white,
//                         ),
//                         padding: EdgeInsets.symmetric(
//                           vertical: 7,
//                           horizontal: 20,
//                         ),
//                         child: Text(
//                           "Asian",
//                           style: TextStyle(
//                             color: Color(0xFF71B1A1),
//                             fontSize: 11,
//                             fontFamily: 'Poppins',
//                             fontWeight: FontWeight.w600,
//                           ),
//                         ),
//                       ),
//                       Container(
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10),
//                           color: Colors.white,
//                         ),
//                         padding: EdgeInsets.symmetric(
//                           vertical: 7,
//                           horizontal: 20,
//                         ),
//                         child: Text(
//                           "Chinese",
//                           style: TextStyle(
//                             color: Color(0xFF71B1A1),
//                             fontSize: 11,
//                             fontFamily: 'Poppins',
//                             fontWeight: FontWeight.w600,
//                           ),
//                         ),
//                       ),
//                       Container(
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10),
//                           color: Colors.white,
//                         ),
//                         padding: EdgeInsets.symmetric(
//                           vertical: 7,
//                           horizontal: 20,
//                         ),
//                         child: Text(
//                           "Fruit",
//                           style: TextStyle(
//                             color: Color(0xFF71B1A1),
//                             fontSize: 11,
//                             fontFamily: 'Poppins',
//                             fontWeight: FontWeight.w600,
//                           ),
//                         ),
//                       ),
//                       Container(
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10),
//                           color: Colors.white,
//                         ),
//                         padding: EdgeInsets.symmetric(
//                           vertical: 7,
//                           horizontal: 20,
//                         ),
//                         child: Text(
//                           "Vegetables",
//                           style: TextStyle(
//                             color: Color(0xFF71B1A1),
//                             fontSize: 11,
//                             fontFamily: 'Poppins',
//                             fontWeight: FontWeight.w600,
//                           ),
//                         ),
//                       ),
//                       Container(
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10),
//                           color: Colors.white,
//                         ),
//                         padding: EdgeInsets.symmetric(
//                           vertical: 7,
//                           horizontal: 20,
//                         ),
//                         child: Text(
//                           "Protein",
//                           style: TextStyle(
//                             color: Color(0xFF71B1A1),
//                             fontSize: 11,
//                             fontFamily: 'Poppins',
//                             fontWeight: FontWeight.w600,
//                           ),
//                         ),
//                       ),
//                       Container(
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10),
//                           color: Colors.white,
//                         ),
//                         padding: EdgeInsets.symmetric(
//                           vertical: 7,
//                           horizontal: 20,
//                         ),
//                         child: Text(
//                           "Cereal",
//                           style: TextStyle(
//                             color: Color(0xFF71B1A1),
//                             fontSize: 11,
//                             fontFamily: 'Poppins',
//                             fontWeight: FontWeight.w600,
//                           ),
//                         ),
//                       ),
//                       Container(
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10),
//                           color: Colors.white,
//                         ),
//                         padding: EdgeInsets.symmetric(
//                           vertical: 7,
//                           horizontal: 20,
//                         ),
//                         child: Text(
//                           "Local Dishes",
//                           style: TextStyle(
//                             color: Color(0xFF71B1A1),
//                             fontSize: 11,
//                             fontFamily: 'Poppins',
//                             fontWeight: FontWeight.w600,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(
//                   height: 246,
//                   child: SingleChildScrollView(
//                     scrollDirection: Axis.horizontal,
//                     child: Row(
//                       crossAxisAlignment: CrossAxisAlignment.end,
//                       children: [
//                         Padding(
//                           padding: EdgeInsets.only(right: 16),
//                           child: Stack(
//                             clipBehavior: Clip.none,
//                             children: [
//                               Container(
//                                 width: 150,
//                                 height: 176,
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(10),
//                                   color: Color(0xFFD9D9D9),
//                                 ),
//                                 child: Padding(
//                                   padding: EdgeInsets.only(
//                                     bottom: 10,
//                                     left: 10,
//                                     right: 10,
//                                   ),
//                                   child: Column(
//                                     mainAxisAlignment: MainAxisAlignment.end,
//                                     spacing: 16,
//                                     children: [
//                                       Container(
//                                         width: 130,
//                                         height: 42,
//                                         child: Text(
//                                           "Classic Greek Salad",
//                                           textAlign: TextAlign.center,
//                                           style: TextStyle(
//                                             color: Color(0xFF484848),
//                                             fontSize: 14,
//                                             fontFamily: 'Poppins',
//                                             fontWeight: FontWeight.w600,
//                                           ),
//                                           softWrap: true,
//                                         ),
//                                       ),
//                                       Row(
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.spaceBetween,
//                                         children: [
//                                           Column(
//                                             crossAxisAlignment:
//                                                 CrossAxisAlignment.start,
//                                             children: [
//                                               Text(
//                                                 "Time",
//                                                 style: TextStyle(
//                                                   color: Color(0xFFA9A9A9),
//                                                   fontSize: 11,
//                                                   fontFamily: 'Poppins',
//                                                   fontWeight: FontWeight.w400,
//                                                 ),
//                                               ),
//                                               SizedBox(height: 5),
//                                               Text(
//                                                 "15 Mins",
//                                                 style: TextStyle(
//                                                   color: Color(0xFF484848),
//                                                   fontSize: 11,
//                                                   fontFamily: 'Poppins',
//                                                   fontWeight: FontWeight.w600,
//                                                 ),
//                                               ),
//                                             ],
//                                           ),
//                                           Image.asset(
//                                             'resources/icons/Bookmark.png',
//                                           ),
//                                         ],
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                               Positioned(
//                                 top: -65,
//                                 left: -5,
//                                 child: Image.asset(
//                                   'resources/icons/salad.png',
//                                   height: 160,
//                                   width: 160,
//                                   fit: BoxFit.cover,
//                                 ),
//                               ),
//                               Positioned(
//                                 top: -24,
//                                 right: 0,
//                                 child: Container(
//                                   decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(20),
//                                     color: Color(0xFFFFE1B3),
//                                   ),
//                                   padding: EdgeInsets.symmetric(
//                                     vertical: 3,
//                                     horizontal: 7,
//                                   ),
//                                   child: Row(
//                                     children: [
//                                       Icon(
//                                         Icons.star,
//                                         size: 10,
//                                         color: Color(0xFFFFAD30),
//                                       ),
//                                       Text(
//                                         "4.5",
//                                         style: TextStyle(
//                                           color: Color.fromARGB(255, 0, 0, 0),
//                                           fontSize: 11,
//                                           fontFamily: 'Poppins',
//                                           fontWeight: FontWeight.w400,
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Padding(
//                           padding: EdgeInsets.only(right: 16),
//                           child: Stack(
//                             clipBehavior: Clip.none,
//                             children: [
//                               Container(
//                                 width: 150,
//                                 height: 176,
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(10),
//                                   color: Color.fromARGB(255, 223, 223, 223),
//                                 ),
//                               ),
//                               Positioned(
//                                 top: -55,
//                                 left: 20,
//                                 child: Image.asset(
//                                   'resources/icons/nut_salad.png',
//                                   height: 110,
//                                   width: 110,
//                                   fit: BoxFit.contain,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Padding(
//                           padding: EdgeInsets.only(right: 16),
//                           child: Stack(
//                             clipBehavior: Clip.none,
//                             children: [
//                               Container(
//                                 width: 150,
//                                 height: 176,
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(10),
//                                   color: Color.fromARGB(255, 223, 223, 223),
//                                 ),
//                               ),
//                               Positioned(
//                                 top: -55,
//                                 left: 20,
//                                 child: Image.asset(
//                                   'resources/icons/shrimp_chicken.png',
//                                   height: 110,
//                                   width: 110,
//                                   fit: BoxFit.contain,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Padding(
//                           padding: EdgeInsets.only(right: 16),
//                           child: Stack(
//                             clipBehavior: Clip.none,
//                             children: [
//                               Container(
//                                 width: 150,
//                                 height: 176,
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(10),
//                                   color: Color.fromARGB(255, 223, 223, 223),
//                                 ),
//                               ),
//                               Positioned(
//                                 top: -55,
//                                 left: 20,
//                                 child: Image.asset(
//                                   'resources/icons/barbecue.png',
//                                   height: 110,
//                                   width: 110,
//                                   fit: BoxFit.contain,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Padding(
//                           padding: EdgeInsets.only(right: 16),
//                           child: Stack(
//                             clipBehavior: Clip.none,
//                             children: [
//                               Container(
//                                 width: 150,
//                                 height: 176,
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(10),
//                                   color: Color.fromARGB(255, 223, 223, 223),
//                                 ),
//                               ),
//                               Positioned(
//                                 top: -55,
//                                 left: 20,
//                                 child: Image.asset(
//                                   'resources/icons/piri_piri.png',
//                                   height: 110,
//                                   width: 110,
//                                   fit: BoxFit.contain,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 Align(
//                   alignment: Alignment.centerLeft,
//                   child: const Text(
//                     "New Recipes",
//                     style: TextStyle(
//                       color: Color.fromARGB(255, 0, 0, 0),
//                       fontSize: 16,
//                       fontFamily: 'Poppins',
//                       fontWeight: FontWeight.w700,
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 135,
//                   child: SingleChildScrollView(
//                     scrollDirection: Axis.horizontal,
//                     child: Row(
//                       crossAxisAlignment: CrossAxisAlignment.end,
//                       children: [
//                         Stack(
//                           clipBehavior: Clip.none,
//                           children: [
//                             Container(
//                               width: 251,
//                               height: 95,
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(10),
//                                 color: Color.fromARGB(255, 255, 255, 255),
//                                 boxShadow: [
//                                   BoxShadow(
//                                     color: Color.fromARGB(255, 223, 223, 223),
//                                     //spreadRadius: 0,
//                                     blurRadius: 20,
//                                     //offset: Offset(0, 0),
//                                   ),
//                                 ],
//                               ),
//                               child: Padding(
//                                 padding: EdgeInsetsGeometry.only(
//                                   left: 9.3,
//                                   right: 9.3,
//                                   bottom: 10,
//                                   top: 10,
//                                 ),
//                                 child: Column(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceBetween,
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Container(
//                                       width: 145,
//                                       child: Text(
//                                         "Steak with tomato sauce and bulgur rice.",
//                                         maxLines: 1,
//                                         overflow: TextOverflow.ellipsis,
//                                         style: TextStyle(
//                                           color: Color(0xFF484848),
//                                           fontSize: 14,
//                                           fontFamily: 'Poppins',
//                                           fontWeight: FontWeight.w600,
//                                         ),
//                                       ),
//                                     ),
//                                     Row(
//                                       children: [
//                                         Icon(
//                                           Icons.star,
//                                           size: 12,
//                                           color: Color(0xFFFFAD30),
//                                         ),
//                                         Icon(
//                                           Icons.star,
//                                           size: 12,
//                                           color: Color(0xFFFFAD30),
//                                         ),
//                                         Icon(
//                                           Icons.star,
//                                           size: 12,
//                                           color: Color(0xFFFFAD30),
//                                         ),
//                                         Icon(
//                                           Icons.star,
//                                           size: 12,
//                                           color: Color(0xFFFFAD30),
//                                         ),
//                                         Icon(
//                                           Icons.star,
//                                           size: 12,
//                                           color: Color(0xFFFFAD30),
//                                         ),
//                                       ],
//                                     ),
//                                     Row(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.spaceBetween,
//                                       children: [
//                                         Row(
//                                           children: [
//                                             Image.asset(
//                                               'resources/icons/avatar_card1.png',
//                                             ),
//                                             SizedBox(width: 8),
//                                             Text(
//                                               "By James Milner",
//                                               style: TextStyle(
//                                                 color: Color(0xFFA9A9A9),
//                                                 fontSize: 11,
//                                                 fontFamily: 'Poppins',
//                                                 fontWeight: FontWeight.w400,
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                         Row(
//                                           children: [
//                                             Image.asset(
//                                               'resources/icons/timer.png',
//                                             ),
//                                             SizedBox(width: 5),
//                                             Text(
//                                               "20 mins",
//                                               style: TextStyle(
//                                                 color: Color(0xFFA9A9A9),
//                                                 fontSize: 11,
//                                                 fontFamily: 'Poppins',
//                                                 fontWeight: FontWeight.w400,
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                       ],
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                             Positioned(
//                               top: -46,
//                               right: -15,
//                               child: Image.asset(
//                                 'resources/icons/card1.png',
//                                 height: 130,
//                                 width: 130,
//                                 fit: BoxFit.contain,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
