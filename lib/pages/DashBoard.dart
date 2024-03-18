import 'package:flutter/material.dart';
import 'package:medimind/components/CardWidget.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'MediMinds',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.cyan[700],
        centerTitle: true,
        toolbarHeight: 100,
        
      ),
      body: CardWidget(),backgroundColor:Colors.cyan[700] ,
    );
  }
}
