import 'dart:async';
import 'package:flutter/material.dart';
import 'package:to_do_appp/layout_view.dart';

class SplashView extends StatefulWidget {
  static const String routName="splash";
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Timer(
     const Duration(seconds: 2),
        (){
       Navigator.pushReplacementNamed(context,
           LayoutView.routName,
       );
        }
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    var mediaQuery=MediaQuery.of(context).size;
    return Scaffold(
      body: Image.asset("assets/images/splash_background.png",
      fit: BoxFit.cover,
        height: mediaQuery.height,
        width: mediaQuery.width,
      ),
    );
  }
}