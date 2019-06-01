import 'package:flutter/material.dart';

class RecruiterMessages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.blue),
        backgroundColor: Colors.white,
        title: Text('Recruiter Messages',style: TextStyle(color: Colors.black))
      )
    );
  }

}