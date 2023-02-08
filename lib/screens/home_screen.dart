import 'package:flutter/material.dart';
import 'package:simple_quraan/cutom_widgets/card.dart';

import '../utilities/assets.dart';
import '../utilities/routes.dart';
import '../utilities/strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.appName),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, Routes.aboutRoute);
              },
              icon: const Icon(Icons.info_outline)),
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, Routes.settingRoute);
              },
              icon: const Icon(Icons.settings_outlined))
        ],
      ),
      //Buttons for subpages
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, Routes.recitersChooseRoute);
              },
              child: const CustomCard(
                  image: ImageAssets.quranImage, title: AppStrings.quran),
            ),
            InkWell(
                onTap: () {
                  Navigator.pushNamed(context, Routes.athkarChooseRoute);
                },
                child: const CustomCard(
                    image: ImageAssets.athkarImage, title: AppStrings.athkar)),
          ],
        ),
      ),
    );
  }
}
