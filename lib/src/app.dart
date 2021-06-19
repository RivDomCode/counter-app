import 'package:flutter/material.dart';
import 'package:flutter_counter/src/pages/counter_page.dart';
//import 'package:flutter_counter/src/pages/home_page.dart';





class MyApp extends StatelessWidget{

  @override
  Widget build( context ) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        //child: HomePage() ,
        child: CounterPage(),
      )


    );
  }
}