import 'dart:async';
import 'package:flutter/material.dart';
import '../utilities/routes.dart';
import '../utilities/strings.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  Timer? _timer;
  _startDelay(){
    _timer = Timer(const Duration(seconds: 2), _goNext);
  }
  _goNext(){
    Navigator.pushReplacementNamed(context, Routes.homeRoute);
  }

  @override
  void initState() {
    _startDelay();
    super.initState();
  }
  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF58E4A2),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(AppStrings.appName, style: TextStyle(color: Colors.black , fontSize: 32, fontWeight: FontWeight.w700),),
            Text(AppStrings.appSolgan, style: TextStyle(color: Colors.white , fontSize: 24, fontWeight: FontWeight.w500))
          ],
        ),
      ),
    );
  }
}
