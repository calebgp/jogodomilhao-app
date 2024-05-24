import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:jogodomilhao/core/firebase_options.dart';
import 'package:jogodomilhao/core/theme.dart';
import 'package:jogodomilhao/home.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    name: "JogoDoCalebao",
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    const JogoDoMilhaoApp(),
  );
}

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
