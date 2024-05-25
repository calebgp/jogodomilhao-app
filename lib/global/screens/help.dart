import 'package:flutter/material.dart';
import 'package:jogodocalebao/global/components/appbar.dart';
import 'package:jogodocalebao/modules/help/container.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar(
        hasBackRoute: true,
        title: "Ajuda",
        showHelp: false,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: HelpContainer(),
      ),
    );
  }
}
