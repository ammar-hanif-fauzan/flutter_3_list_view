// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // ============================= Static ===============================================
  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     debugShowCheckedModeBanner: false,
  //     home: Scaffold(
  //       appBar: AppBar(
  //         title: Text("List View"),
  //       ),
  //       // // ================== Witdh otomatis 100% dan scroll vertikal ====================
  //       body: ListView(
  //         children: [
  //           Container(
  //             width: 300,
  //             height: 300,
  //             color: Colors.green,
  //           ),
  //           Container(
  //             width: 300,
  //             height: 300,
  //             color: Colors.orange,
  //           ),
  //           Container(
  //             width: 300,
  //             height: 300,
  //             color: Colors.amber,
  //           ),
  //           Container(
  //             width: 300,
  //             height: 300,
  //             color: Colors.red,
  //           ),
  //         ],
  //       ),
  //       // ================== Height otomatis 100% dan scroll horizontal ====================
  //       // body: ListView(
  //       //   scrollDirection: Axis.horizontal,
  //       //   children: [
  //       //     Container(
  //       //       width: 300,
  //       //       height: 300,
  //       //       color: Colors.green,
  //       //     ),
  //       //     Container(
  //       //       width: 300,
  //       //       height: 300,
  //       //       color: Colors.orange,
  //       //     ),
  //       //     Container(
  //       //       width: 300,
  //       //       height: 300,
  //       //       color: Colors.amber,
  //       //     ),
  //       //     Container(
  //       //       width: 300,
  //       //       height: 300,
  //       //       color: Colors.red,
  //       //     ),
  //       //   ],
  //       // ),
  //     ),
  //   );
  // }
  // ============================== End of Static ==============================
  // ============================== Dynamic ====================================
  List<Color> myColor = [Colors.red, Colors.orange, Colors.amber, Colors.green];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("List View"),
        ),
        // // ================== Builder ====================
        // body: ListView.builder(
        //   itemCount: myColor.length,
        //   itemBuilder: (context, index) {
        //     return Container(
        //       height: 300,
        //       width: 300,
        //       color: myColor[index],
        //     );
        //   },
        // ),
        // ==================== Separator ====================
        body: ListView.separated(
          separatorBuilder: (context, index) {
            return Container(
              height: 50,
            );
          },
          itemCount: myColor.length,
          itemBuilder: (context, index) {
            return Container(
              height: 300,
              width: 300,
              color: myColor[index],
            );
          },
        ),
      ),
    );
  }
}
