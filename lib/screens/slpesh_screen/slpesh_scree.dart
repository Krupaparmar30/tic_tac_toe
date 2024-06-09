import 'dart:async';

import 'package:flutter/material.dart';

class slpeshPage extends StatefulWidget {
  const slpeshPage({super.key});

  @override
  State<slpeshPage> createState() => _slpeshPageState();
}

class _slpeshPageState extends State<slpeshPage> {
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 4),(){
      Navigator.of(context).pushReplacementNamed('/next');
    });
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(

          height: 200,
          width: 300,
          decoration: BoxDecoration(
            color: Colors.pink,
               image: DecorationImage(
                 fit: BoxFit.cover,
                 image: AssetImage(
                   'assets/images/TOC.png',
                 )
               )
          ),
        ),
      ),
    );
  }
}
