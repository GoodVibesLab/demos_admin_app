import 'package:demos_app/screens/auth_screen.dart';
import 'package:demos_app/screens/home_screen.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

var rootHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
      return const HomeScreen();
    });

var authHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
      return const AuthScreen();
    });

/// Handles deep links into the app
/// To test on Android:
///
/// `adb shell am start -W -a android.intent.action.VIEW -d "fluro://deeplink?path=/message&mesage=fluro%20rocks%21%21" com.theyakka.fluro`
/*
var deepLinkHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
      String? colorHex = params["color_hex"]?.first;
      String? result = params["result"]?.first;
      Color color = Color(0xFFFFFFFF);
      if (colorHex != null && colorHex.length > 0) {
        color = Color(ColorHelpers.fromHexString(colorHex));
      }
      return DemoSimpleComponent(
          message: "DEEEEEP LINK!!!", color: color, result: result);
    });*/
