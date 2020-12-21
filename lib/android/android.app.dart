import 'package:app_geladeira/android/controllers/theme.controller.dart';
import 'package:app_geladeira/android/stores/app.store.dart';
import 'package:app_geladeira/android/views/tabs-view.dart';
import 'package:app_geladeira/themes/custom.theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AndroidApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: ThemeController.instance,
      builder: (context, child) => MultiProvider(
        providers: [Provider<AppStore>.value(value: AppStore())],
        child: MaterialApp(
          routes: {
            '/': (context) => DefaultTabController(
                  length: 3,
                  child: TabsView(),
                ),
          },
          debugShowCheckedModeBanner: false,
          title: 'Geladeira',
          theme: customTheme(ThemeController.instance.isDarkTheme
              ? Brightness.dark
              : Brightness.light),
        ),
      ),
    );
  }
}
