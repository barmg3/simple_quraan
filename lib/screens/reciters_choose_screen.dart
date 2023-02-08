import 'package:flutter/material.dart';
import '../cutom_widgets/card.dart';
import '../utilities/assets.dart';
import '../utilities/strings.dart';

class RecitersScreen extends StatelessWidget {
  const RecitersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.chooseReciter),
        leading: GestureDetector(
          child: const Icon(
            Icons.arrow_back_ios,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: GridView(
        padding: const EdgeInsets.all(20.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 20.0,
            mainAxisSpacing: 20.0),
        children: const [
          CustomCard(
              image: ImageAssets.quranImage, title: AppStrings.quran),
          CustomCard(
              image: ImageAssets.quranImage, title: AppStrings.quran),
          CustomCard(
              image: ImageAssets.quranImage, title: AppStrings.quran),
          CustomCard(
              image: ImageAssets.quranImage, title: AppStrings.quran),
          CustomCard(
              image: ImageAssets.quranImage, title: AppStrings.quran),
          CustomCard(
              image: ImageAssets.quranImage, title: AppStrings.quran),
          CustomCard(
              image: ImageAssets.quranImage, title: AppStrings.quran),
        ],
      ),
    );
  }
}
