import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/dark_theme_provider.dart';
import '../utilities/strings.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);



  @override
  State<SettingScreen> createState() => _SettingScreenState();

}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    final themeState = Provider.of<DarkThemeProvider>(context);
    return Scaffold(
        appBar: AppBar(
          title: const Text(AppStrings.settings),
          leading: GestureDetector(
            child: const Icon(
              Icons.arrow_back_ios,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              height: 60,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(AppStrings.notifications , style: TextStyle(fontSize: 15 , fontWeight: FontWeight.w500),),
                  Switch(
                    value: true,
                    onChanged: (value) {},
                    activeColor: const Color(0xFF58E4A2),
                  )
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              height: 60,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(AppStrings.darkMood , style: TextStyle(fontSize: 15 , fontWeight: FontWeight.w500), ),
                  Switch(
                    value: themeState.darkTheme,
                    onChanged: (bool value) {
                      themeState.darkTheme = value;
                    },
                    activeColor: const Color(0xFF58E4A2),
                  )
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              height: 60,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(AppStrings.rateUs , style: TextStyle(fontSize: 15 , fontWeight: FontWeight.w500), ),
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              height: 60,
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(AppStrings.privacyPolicy , style: TextStyle(fontSize: 15 , fontWeight: FontWeight.w500), ),
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              height: 60,
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(AppStrings.termsAndConditions , style: TextStyle(fontSize: 15 , fontWeight: FontWeight.w500), ),
                ],
              ),
            ),
          ],
        ));
  }
}
