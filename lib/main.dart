import 'package:flutter/material.dart';
import 'package:jogodomilhao/core/theme.dart';
import 'package:jogodomilhao/home.dart';

void main() => runApp(
      const JogoDoMilhaoApp(),
    );

class JogoDoMilhaoApp extends StatelessWidget {
  const JogoDoMilhaoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Jogo Do Milhão',
        theme: myLightTheme,
        debugShowCheckedModeBanner: false,
        home: const HomePage());
  }
}
