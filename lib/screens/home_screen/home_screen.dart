import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(

        child: Column(

          children: [
           Column(
               children: [
                 SizedBox(
                   height: 30,
                 ),
                 Container(

                   height: 150,
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
                 SizedBox(
                   height: 100,
                 ),
                 Center(
                   child: GestureDetector(
                     onTap: () {
                       Navigator.of(context).pushNamed('/play');
                     },
                     child: Container(
                       height: 200,
                       width: 200,
                       decoration: BoxDecoration(
                           color: Colors.pink,
                           image: DecorationImage(
                               image: AssetImage(
                                 'assets/images/ox.png',
                               )
                           ),
                           boxShadow: [

                             BoxShadow(
                                 color: Colors.grey,
                                 offset: Offset(0,2),
                                 spreadRadius: 2,
                                 blurRadius: 2
                             )
                           ]
                       ),
                     ),
                   ),
                 )
               ],
             ),

          ],
        ),
      ),
    );
  }
}
