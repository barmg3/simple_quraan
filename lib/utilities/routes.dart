import 'package:flutter/material.dart';

import '../screens/about_screen.dart';
import '../screens/afternoon_athkar_screen.dart';
import '../screens/athkar_choose_screen.dart';
import '../screens/home_screen.dart';
import '../screens/morning_athkar_screen.dart';
import '../screens/quran_player_screen.dart';
import '../screens/quran_playlist_screen.dart';
import '../screens/reciters_choose_screen.dart';
import '../screens/setting_screen.dart';
import '../screens/splash_screen.dart';

class Routes{
  static const String splashRoute = "/";
  static const String homeRoute = "/home";
  static const String recitersChooseRoute = "/recitersChoose";
  static const String quranPlaylistRoute = "/quranPlaylist";
  static const String quranPlayerRoute = "/quranPlayer";
  static const String athkarChooseRoute = "/athkarChoose";
  static const String morningAthkarRoute = "/morningAthkar";
  static const String afternoonAthkarRoute = "/afternoonAthkar";
  static const String settingRoute = "/setting";
  static const String aboutRoute = "/about";
}

class RouteGenerator{
  static Route<dynamic> getRoute(RouteSettings routeSettings){
    switch(routeSettings.name){
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.homeRoute:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case Routes.recitersChooseRoute:
        return MaterialPageRoute(builder: (_) => const RecitersScreen());
      case Routes.quranPlaylistRoute:
        return MaterialPageRoute(builder: (_) => const QuranPlaylistScreen());
      case Routes.quranPlayerRoute:
        return MaterialPageRoute(builder: (_) => const QuranPlayerScreen());
      case Routes.athkarChooseRoute:
        return MaterialPageRoute(builder: (_) => const AthkarScreen());
      case Routes.morningAthkarRoute:
        return MaterialPageRoute(builder: (_) => const MorningAthkarScreen());
      case Routes.afternoonAthkarRoute:
        return MaterialPageRoute(builder: (_) => const AfternoonAthkarScreen());
      case Routes.settingRoute:
        return MaterialPageRoute(builder: (_) => const SettingScreen());
      case Routes.aboutRoute:
        return MaterialPageRoute(builder: (_) => const AboutScreen());
      default:
        return unDefinedRoute();
    }
  }
  static Route<dynamic> unDefinedRoute(){
    return MaterialPageRoute(builder: (_) => Scaffold(
      appBar: AppBar(
        title: const Text("No Page Found!"),
      ),
      body: const Center(
        child: Text("No Page Found!"),
      ),
    ));
  }
}