import 'package:flutter/material.dart';
import '../cutom_widgets/card.dart';
import '../utilities/assets.dart';
import '../utilities/routes.dart';
import '../utilities/strings.dart';

class AthkarScreen extends StatelessWidget {
  const AthkarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.athkar),
        leading: GestureDetector(
          child: const Icon(
            Icons.arrow_back_ios,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
                onTap: () {
                  Navigator.pushNamed(context, Routes.morningAthkarRoute);
                },
                child: const CustomCard(
                    image: ImageAssets.morningImage,
                    title: AppStrings.morning)),
            InkWell(
                onTap: () {
                  Navigator.pushNamed(context, Routes.afternoonAthkarRoute);
                },
                child: const CustomCard(
                    image: ImageAssets.afternoonImage,
                    title: AppStrings.afternoon)),
          ],
        ),
      ),
    );
  }
}
