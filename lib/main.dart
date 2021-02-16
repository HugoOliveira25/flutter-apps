import 'dart:io';
import 'package:app_geladeira/android/android.app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);

  SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);

  if (Platform.isIOS) {
  } else {
    runApp(AndroidApp());
  }
}
