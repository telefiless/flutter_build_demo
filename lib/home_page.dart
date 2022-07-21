import 'dart:convert';

import 'package:flutter/material.dart';
import './rendering.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required String title}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: const EdgeInsets.only(left: 6.0, right: 6.0),
      child: Column(
        children: const [
          rendering(),
        ],
      ),
    ));
  }
}
