import 'package:flutter/material.dart';
import 'package:flutter_fashion_app/model/cart.dart';
import 'package:flutter_fashion_app/screens/home_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(
      ChangeNotifierProvider(
        create: (_) => Cart(),
        child: MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Fashion App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Gilroy',
      ),
      home: HomeScreen(),
    );
  }
}
