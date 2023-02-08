import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_quraan/providers/dark_theme_provider.dart';
import 'package:simple_quraan/screens/home_screen.dart';
import 'package:simple_quraan/utilities/routes.dart';
import 'package:simple_quraan/utilities/strings.dart';
import 'package:simple_quraan/utilities/theme_styles.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  DarkThemeProvider themeChangeProvider = DarkThemeProvider();

  void getCurrentAppTheme() async {
    themeChangeProvider.darkTheme =
    await themeChangeProvider.darkThemePreference.getTheme();
  }

  @override
  void initState() {
    super.initState();
    getCurrentAppTheme();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) {
        return themeChangeProvider;
      },
      child: Consumer<DarkThemeProvider>(builder: (context, themeData, child){
        return MaterialApp(
       debugShowCheckedModeBanner: false,
        theme: Styles.themeData(themeChangeProvider.darkTheme, context),
        onGenerateRoute: RouteGenerator.getRoute,
        initialRoute: Routes.splashRoute,
        title: AppStrings.appName,
      );
      }
    ));
  }
}
