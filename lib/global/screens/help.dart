import 'package:flutter/material.dart';
import 'package:jogodomilhao/global/components/appbar.dart';
import 'package:jogodomilhao/modules/help/container.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        title: "Ajuda",
        showHelp: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: const HelpContainer(),
      ),
    );
  }
}
