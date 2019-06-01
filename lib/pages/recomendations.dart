import 'package:flutter/material.dart';

class Recomendations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.blue),
        backgroundColor: Colors.white,
        title: Text('Recomendation',style: TextStyle(color: Colors.black))
      )
    );
  }

}