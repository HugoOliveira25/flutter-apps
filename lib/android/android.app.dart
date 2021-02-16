import 'package:app_geladeira/android/views/home-view.dart';
import 'package:app_geladeira/android/views/products-view.dart';
import 'package:app_geladeira/android/views/splash.view.dart';
import 'package:app_geladeira/themes/custom.theme.dart';
import 'package:flutter/material.dart';

class AndroidApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {
          '/': (context) => SplashView(),
          '/home': (context) => HomeView(),
          '/produtos': (context) => ProductsView(),
        },
        debugShowCheckedModeBanner: false,
        title: 'Geladeira',
        theme: customTheme());
  }
}
