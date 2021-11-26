import 'package:demo_flutter_app/MyHomePage.dart';
import 'package:demo_flutter_app/productdata.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.deepPurple,
      ),
      home: Navigation(),
    );
  }
}

class Navigation extends StatefulWidget {

  @override
  NavigationState createState() => NavigationState();
}

class NavigationState extends State<Navigation> {
int selectIndex = 0;
  List items = [
   MyHomePage(),
  productdata(),
    productdata(),
    productdata(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   bottomNavigationBar: BottomNavigationBar(
     currentIndex: selectIndex,
     onTap: (index){
       setState(() {
         selectIndex = index;
       });
     },
     items: [
       BottomNavigationBarItem(icon: Icon(Icons.business_sharp,color: Colors.blue,),
       label: 'Home',
       ),
       BottomNavigationBarItem(icon: Icon(Icons.trending_up,color: Colors.blue),
         label: 'MarketWatch',
       ),
       BottomNavigationBarItem(icon: Icon(Icons.swap_horiz,color: Colors.blue),
         label: 'Trade',
       ),
       BottomNavigationBarItem(icon: Icon(Icons.explore,color: Colors.blue),
         label: 'Explore',
       ),
     ],
   ),

    body: items[selectIndex],
    );
  }
}