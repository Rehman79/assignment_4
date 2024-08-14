import 'package:assignment_4/Model/post.dart';
import 'package:assignment_4/screens/Homepage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => PostData(),
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'API Integration',
      home: Homepage(),
    ),
  ));
}