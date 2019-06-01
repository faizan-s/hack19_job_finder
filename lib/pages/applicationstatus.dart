import 'package:flutter/material.dart';

class ApplicationStatus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.blue),
        backgroundColor: Colors.white,
        title: Text('Application Status',style: TextStyle(color: Colors.black))
      )
    );
  }

}