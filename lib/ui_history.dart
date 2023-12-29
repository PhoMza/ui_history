// import 'dart:convert';

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:ui_history/model/history.dart';
// import 'package:http/http.dart' as http;

// class HistoryUI extends StatefulWidget {
//   const HistoryUI({super.key});

//   @override
//   State<HistoryUI> createState() => HistoryUIState();
// }

// class HistoryUIState extends State<HistoryUI> {
//   late Future<List<HistoryBorrow>> _getHistoryBorrow;

//   getHistoryBorrow_() async {
//     setState(() {
//       print("getHistoryBorrow Working");
//       //print("user_id ที่ส่งไป = "+widget.user_id.toString());
//       print("เลขของปุ่ม = " + history.toString());
//       _getHistoryBorrow =
//           // API.getHistoryBorrow(widget.user_id.toString(), history.toString());
//           //API.getHistoryBorrow(widget.user_id.toString(),history.toString());
//           // API.getHistoryBorrow("634659115", "1");
//           print("affter _getHistoryBorrow");
//       print("เรียก _getHistoryBorrow = " + _getHistoryBorrow.toString());
//     });

//     // ทำตามที่คุณต้องการในกรณีที่เกิดข้อผิดพลาด, เช่น แสดงข้อความแจ้งเตือน
//   }
// }

// @override
// void initState() {
//   print("initState Working");
//   getHistoryBorrow_("1");
//   super.initState();
// }

// Widget build(BuildContext context) {
//   return Scaffold(
//     appBar: AppBar(
//       title: const Text('History'),
//     ),
//     body: Column(
//       children: [
//         Padding(
//           padding: EdgeInsetsDirectional.fromSTEB(8, 10, 8, 0),
//           child: Row(
//             mainAxisSize: MainAxisSize.max,
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               ElevatedButton(
//                 onPressed: () {
//                   print("Borrow Page");
//                   getHistoryBorrow_("1");
//                 },
//                 style: ElevatedButton.styleFrom(
//                   primary: Colors.red.withOpacity(1),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                   minimumSize: Size(110, 100),
//                 ),
//                 child: Column(
//                   mainAxisSize: MainAxisSize.max,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Icon(
//                       CupertinoIcons.person_crop_circle_badge_xmark,
//                       color: Colors.white,
//                       size: 40,
//                     ),
//                     Padding(
//                       padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
//                       child: Text(
//                         "ยังไม่คืน",
//                         style: TextStyle(
//                           fontSize: 18,
//                           color: Colors.white,
//                           fontWeight: FontWeight.w600,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               ElevatedButton(
//                 onPressed: () {
//                   print("Return Page");
//                   getHistoryBorrow_("2");
//                 },
//                 style: ElevatedButton.styleFrom(
//                   primary: Colors.red.withOpacity(1),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                   minimumSize: Size(110, 100),
//                 ),
//                 child: Column(
//                   mainAxisSize: MainAxisSize.max,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Icon(
//                       CupertinoIcons.person_crop_circle_badge_checkmark,
//                       color: Colors.white,
//                       size: 40,
//                     ),
//                     Padding(
//                       padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
//                       child: Text(
//                         "คืนแล้ว",
//                         style: TextStyle(
//                           fontSize: 18,
//                           color: Colors.white,
//                           fontWeight: FontWeight.w600,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               ElevatedButton(
//                 onPressed: () {
//                   print("ALL Page");

//                   getHistoryBorrow_("3");
//                 },
//                 style: ElevatedButton.styleFrom(
//                   primary: Colors.red.withOpacity(1),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                   minimumSize: Size(110, 100),
//                 ),
//                 child: Column(
//                   mainAxisSize: MainAxisSize.max,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Icon(
//                       CupertinoIcons.collections,
//                       color: Colors.white,
//                       size: 40,
//                     ),
//                     Padding(
//                       padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
//                       child: Text(
//                         "ทั้งหมด",
//                         style: TextStyle(
//                           fontSize: 18,
//                           color: Colors.white,
//                           fontWeight: FontWeight.w600,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//         Divider(),
//         Container(
//           height: 250,
//           child: Container(
//             padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
//             child: FutureBuilder(
//                 future: _getHistoryBorrow,
//                 builder: (context, snapshot) {
//                   if (snapshot.hasData) {
//                     print("has data");
//                     print("data length = ");
//                     // print(snapshot.data?.length);
//                     return ListView.builder(
//                       itemCount: snapshot.data?.length,
//                       //itemCount: 1,
//                       itemBuilder: (BuildContext context, int index) {
//                         return Padding(
//                           padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
//                           child: Container(
//                             width: MediaQuery.of(context).size.width * 0.92,
//                             height: 70,
//                             decoration: BoxDecoration(
//                               color: Colors.red.withOpacity(0.3),
//                               borderRadius: BorderRadius.circular(8),
//                             ),
//                             child: Row(
//                               mainAxisSize: MainAxisSize.max,
//                               children: [
//                                 Padding(
//                                   padding: EdgeInsetsDirectional.fromSTEB(
//                                       8, 0, 0, 0),
//                                   child: Card(
//                                     clipBehavior: Clip.antiAliasWithSaveLayer,
//                                     color: Color(0x6639D2C0),
//                                     shape: RoundedRectangleBorder(
//                                       borderRadius: BorderRadius.circular(40),
//                                     ),
//                                     child: Padding(
//                                       padding: EdgeInsets.all(8),
//                                       child: Text(
//                                         "01",
//                                         style: TextStyle(
//                                           fontFamily: 'Lexend',
//                                           color: Colors.white,
//                                           fontSize: 24,
//                                           fontWeight: FontWeight.bold,
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                                 Container(
//                                   child: Padding(
//                                     padding: EdgeInsetsDirectional.fromSTEB(
//                                         8, 0, 0, 0),
//                                     child: Column(
//                                       mainAxisSize: MainAxisSize.max,
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.center,
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.start,
//                                       children: [
//                                         Text(
//                                           "Name :",
//                                           // snapshot.data?[index].name ??
//                                           //     "No Name",
//                                           // snapshot.data![index].name,
//                                           style: TextStyle(
//                                             fontSize: 18,
//                                             color: Colors.black,
//                                             fontWeight: FontWeight.bold,
//                                           ),
//                                         ),
//                                         Padding(
//                                           padding:
//                                               EdgeInsetsDirectional.fromSTEB(
//                                                   0, 10, 0, 0),
//                                           child: Text(
//                                             "Borrow Date : 01/01/2021",
//                                             // snapshot.data?[index].name ??
//                                             //     "No Name",
//                                             // snapshot.data![index].name,
//                                             style: TextStyle(
//                                               fontSize: 16,
//                                             ),
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         );
//                       },
//                     );
//                   } else {
//                     print("no data");
//                     return Center(
//                       child: CircularProgressIndicator(),
//                     );
//                   }
//                 }),
//           ),
//         ),
//       ],
//     ),
//   );
// }


  

