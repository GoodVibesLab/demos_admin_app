import 'package:demos_app/screens/auth_screen.dart';
import 'package:demos_app/screens/create_poll_screen.dart';
import 'package:demos_app/screens/generic_pool_screen.dart';
import 'package:demos_app/screens/home_screen.dart';
import 'package:demos_app/screens/pool_detail.dart';
import 'package:demos_app/screens/search_screen.dart';
import 'package:demos_app/screens/user_details_screen.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import '../models/poll.dart';
import '../screens/splash_screen.dart';

var splashHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
      return const SplashScreen();
    });

var homeHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
      return const HomeScreen();
    });

var authHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
      return const AuthScreen();
    });

var createHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
      return CreatePollScreen();
    });

var searchHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
      return SearchScreen();
    });

var poolHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
      return PoolDetailsScreen(poolId: params['id']![0]);
    });

var userHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
      return UserDetailsScreen(userId: params['id']![0]);
    });

var genericPollHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
      final future = context?.settings?.arguments as Future<List<Poll>> Function(int);
      return GenericPollScreen(future: future);
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
