import 'package:flutter/material.dart';
import 'package:jogodomilhao/screens/home.dart';

void main() => runApp(const JogoDoMilhaoApp());

class JogoDoMilhaoApp extends StatelessWidget {
  const JogoDoMilhaoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jogo Do Milhão',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.black,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
