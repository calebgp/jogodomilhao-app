import 'package:flutter/material.dart';
import 'package:jogodomilhao/global/components/appbar.dart';
import 'package:jogodomilhao/modules/question/view.dart';
import 'package:jogodomilhao/modules/seetings/utils/create_route.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Bem-vindo ao',
              style: TextStyle(
                fontSize: 28,
                color: Theme.of(context).colorScheme.onBackground,
              ),
            ),
            const SizedBox(height: 10),
            const Center(
              child: Text(
                'JOGO DO CALEBÃO',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 41,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(_createRoute(QuestionPage()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[900],
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 30,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Text(
                'COMEÇAR',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _createRoute(destination) => RouteGlobal().createRoute(destination);
}
