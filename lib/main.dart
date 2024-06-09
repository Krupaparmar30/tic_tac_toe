import 'package:flutter/material.dart';
import 'package:tic_tac_toe/utils/routes.dart';
void main()
{
  runApp(tic_tac_toeApp());
}
class tic_tac_toeApp extends StatelessWidget {
  const tic_tac_toeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes:AppRoutes.routes,
    );
  }
}
