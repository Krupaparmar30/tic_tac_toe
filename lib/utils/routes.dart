



import 'package:flutter/material.dart';
import 'package:tic_tac_toe/screens/home_screen/home_screen.dart';
import 'package:tic_tac_toe/screens/play_screen/play_screen.dart';
import 'package:tic_tac_toe/screens/slpesh_screen/slpesh_scree.dart';
import 'package:tic_tac_toe/screens/start_screen/start_screen.dart';

class AppRoutes{
  static Map <String, Widget Function(BuildContext)> routes={


    '/':(context)=>slpeshPage(),
    '/next':(context)=>homePage(),
    '/play':(context)=>playPage(),
    '/start':(context)=>startPage(),


  };
}