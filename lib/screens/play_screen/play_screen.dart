import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class playPage extends StatefulWidget {
  const playPage({super.key});

  @override
  State<playPage> createState() => _playPageState();
}

class _playPageState extends State<playPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(

              height: 100,
              width:200,
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
              height: 15,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('/start');
              },
              child: Container(
                height: 250,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/images/p2.jpg',
                        )
                    ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,blurRadius: 2,spreadRadius: 2
                        ,offset: Offset(0,3)
                    )
                  ]
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height:40,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/images/VS.jpg',
                    )
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('/start');
              },
              child: Container(
                height: 250,
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/images/p1.jpg',
                        )
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black,blurRadius: 2,spreadRadius: 2
                          ,offset: Offset(0,3)
                      )
                    ]
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
