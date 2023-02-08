import 'package:flutter/material.dart';

import '../cutom_widgets/card.dart';
import '../utilities/strings.dart';

class AfternoonAthkarScreen extends StatelessWidget {
  const AfternoonAthkarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.afternoonAthkar),
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
