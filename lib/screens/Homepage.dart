import 'package:assignment_4/Components/List_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(title: Text('API Integration',style: TextStyle(fontWeight: FontWeight.bold),),
      backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: list_view(),
    );
  }
}
