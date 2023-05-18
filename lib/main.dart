import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tudo/home.dart';

void main()
{
  runApp( const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:HomePage(),
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}