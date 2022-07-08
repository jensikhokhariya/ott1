import 'package:flutter/material.dart';
import 'package:ott1/screen/ink_s.dart';
import 'package:ott1/screen/ott_s.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=>Ott_S(),
        'links':(context)=>Link_S(),
      },
    ),
  );
}
