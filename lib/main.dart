import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:jogodocalebao/core/firebase_options.dart';
import 'package:jogodocalebao/core/theme.dart';
import 'package:jogodocalebao/home.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    name: "JogoDoCalebao",
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    const JogoDoCalebaoApp(),
  );
}

class JogoDoCalebaoApp extends StatelessWidget {
  const JogoDoCalebaoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Jogo Do Milhão',
        theme: myLightTheme,
        debugShowCheckedModeBanner: false,
        home: const HomePage());
  }
}
