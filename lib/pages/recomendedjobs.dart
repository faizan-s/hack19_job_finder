import 'package:flutter/material.dart';

class RecomendedJobs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.blue),
        backgroundColor: Colors.white,
        title: Text('RecomendedJobs',style: TextStyle(color: Colors.black))
      )
    );
  }

}