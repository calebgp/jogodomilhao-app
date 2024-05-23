import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:jogodomilhao/core/constants.dart';

class HelpContainer extends StatelessWidget {
  const HelpContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var instructions = Constants.instructions;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.red,
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Como jogar:',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const Gap(16),
            ListView.builder(
              itemCount: instructions.length,
              shrinkWrap: true,
              itemBuilder: (c, i) {
                return Text(
                  instructions[i],
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
