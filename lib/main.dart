import 'package:dribbble_travel/widgets/list_food_items.dart';
import 'package:flutter/material.dart';
import 'widgets/header.dart';
import 'widgets/heading.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Color(0xFF21BFBD),
      body: ListView(
        children: [
      Header(), 
      SizedBox(height: 25,),
      Heading(),
      SizedBox(height: 40,),
      Container(
        height: MediaQuery.of(context).size.height - 185.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(75.0)
          ),
        ),
        child: ListFoodItems()
      ),
        ],
      ),
    );
  }
}
