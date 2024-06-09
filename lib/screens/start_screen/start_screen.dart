import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class startPage extends StatefulWidget {
  const startPage({super.key});

  @override
  State<startPage> createState() => _startPageState();
}

class _startPageState extends State<startPage> {
  List<String> displayElemente = ['', '', '', '', '', '', '', '', ''];
  int player_o = 0;
  int player_x = 0;
  int box = 0;
  bool winner = false;
  bool turnO = true;
  String result = '';
  List<int> matched = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              Container(
                height: 100,
                width: 100,
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
                          color: Colors.black, blurRadius: 2, spreadRadius: 2
                          , offset: Offset(0, 3)
                      )
                    ]
                ),
              ),
              Container(
                height: 100,
                width: 100,
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
                          color: Colors.black, blurRadius: 2, spreadRadius: 2
                          , offset: Offset(0, 3)
                      )
                    ]
                ),
              ),


            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text('Player O'),
                    Text(player_o.toString(), style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Column(
                  children: [
                    Text('Player X'),
                    Text(player_x.toString(), style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),)
                  ],
                ),
              ),

            ],
          ),
          Container(
            height: 350,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Colors.white,

            ),
            child: Expanded(
                flex: 6,
                child:
                GridView.builder(
                    itemCount: 9,

                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3
                    ), itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      _ch(index);
                    },
                    child: Container(
                      // height: 200,
                      // width: 400,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          border: Border.all(color: Colors.black),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 2,
                                spreadRadius: 2
                                ,
                                offset: Offset(0, 1)
                            )
                          ]
                      ),
                      child: Center(
                        child: Text(
                          displayElemente[index],
                          style: TextStyle(color: Colors.black, fontSize: 40),
                        ),
                      ),
                    ),
                  );
                })

            ),
          ),

          Text(result, style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
              fontSize: 18
          ),),
          Expanded(child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                  onTap: () {
                    setState(() {
                      _clearall();
                      Navigator.of(context).pop();
                    });
                  },
                  child: Container
                    (
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                            'assets/images/re.png'
                        ),

                      ),
                    ),
                  )
              ),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      _clearall();
                      Navigator.of(context).pop();
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container
                      (
                      height: 50,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  'assets/images/g.jpg'
                              )
                          )
                      ),
                    ),
                  )
              )
            ],))
        ],

      ),

    );
  }

  void _ch(int index) {
    setState(() {
      if (turnO && displayElemente[index] == '') {
        displayElemente[index] = 'O';
        box++;
      }
      else if (!turnO && displayElemente[index] == '') {
        displayElemente[index] = 'X';
        box++;
      }

      turnO = !turnO;
      _checkWinner();
    });
  }

  void _checkWinner() {
    if (displayElemente[0] == displayElemente[1] &&
        displayElemente[0] == displayElemente[2] && displayElemente[0] != '') {
      setState(() {
        result = 'Player ' + displayElemente[0] + 'Wins !';
        matched.addAll([0, 1, 2]);
        _updateScroreall(displayElemente[0]);
      });
    }
    if (displayElemente[3] == displayElemente[4] &&
        displayElemente[3] == displayElemente[5] && displayElemente[3] != '') {
      setState(() {
        result = 'Player ' + displayElemente[3] + 'Wins !';
        matched.addAll([3, 4, 5]);
        _updateScroreall(displayElemente[3]);
      });
    }
    if (displayElemente[6] == displayElemente[7] &&
        displayElemente[6] == displayElemente[8] && displayElemente[6] != '') {
      setState(() {
        result = 'Player ' + displayElemente[6] + 'Wins !';
        matched.addAll([6, 7, 8]);
        _updateScroreall(displayElemente[6]);
      });
    }
    if (displayElemente[0] == displayElemente[3] &&
        displayElemente[0] == displayElemente[6] && displayElemente[0] != '') {
      setState(() {
        result = 'Player ' + displayElemente[0] + 'Wins !';
        matched.addAll([0, 3, 6]);
        _updateScroreall(displayElemente[0]);
      });
    }
    if (displayElemente[1] == displayElemente[4] &&
        displayElemente[1] == displayElemente[7] && displayElemente[1] != '') {
      setState(() {
        result = 'Player ' + displayElemente[1] + 'Wins !';
        matched.addAll([1, 4, 7]);
        _updateScroreall(displayElemente[1]);
      });
    }
    if (displayElemente[2] == displayElemente[5] &&
        displayElemente[2] == displayElemente[8] && displayElemente[2] != '') {
      setState(() {
        result = 'Player ' + displayElemente[2] + 'Wins !';
        matched.addAll([2, 5, 8]);
        _updateScroreall(displayElemente[2]);
      });
    }
    if (displayElemente[0] == displayElemente[4] &&
        displayElemente[0] == displayElemente[8] && displayElemente[0] != '') {
      setState(() {
        result = 'Player ' + displayElemente[0] + ' Wins!';
        matched.addAll([0, 4, 8]);
        _updateScroreall(displayElemente[0]);
      });
    }

    if (displayElemente[6] == displayElemente[4] &&
        displayElemente[6] == displayElemente[2] && displayElemente[6] != '') {
      setState(() {
        result = 'Player ' + displayElemente[6] + ' Wins!';
        matched.addAll([6, 4, 2]);
        _updateScroreall(displayElemente[6]);
      });
    } else if (winner && box == 9) {
      setState(() {
        result = "Nobody wins !!!!";
      });
    }
    else
          () {
        setState(() {
          result = "Nobody wins !!!!";
        });
      };
  }

  void _updateScroreall(String winners) {
    if (winners == 'O') {
      player_o++;
    } else if (winners == 'X') {
      player_x++;
    }
    else
          () {
        player_o;
        player_x;
      };
    winner = true;
  }

  void _clearall() {
    setState(() {
      for (int i = 0; i < i; i++) {
        displayElemente[i] = '';
      }
      result = '';
      matched = [];
    });
    box = 0;
  }
}

