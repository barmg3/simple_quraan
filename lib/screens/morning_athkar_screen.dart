import 'package:flutter/material.dart';
import 'package:simple_quraan/cutom_widgets/card.dart';

import '../utilities/strings.dart';

class MorningAthkarScreen extends StatelessWidget {
  const MorningAthkarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.morningAthkar),
        leading: GestureDetector(
          child: const Icon(
            Icons.arrow_back_ios,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        children: const [
          AthkarCard(),
          AthkarCard(),
          AthkarCard(),
          AthkarCard(),
          AthkarCard(),
          AthkarCard(),
          AthkarCard(),
        ],
      ),
    );
  }
}
