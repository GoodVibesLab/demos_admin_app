import 'package:demos_app/routes/router.dart';
import 'package:demos_app/services/supabase_service.dart';
import 'package:demos_app/themes/themes.dart';
import 'package:demos_app/utils/constants.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import 'firebase_options.dart';
import 'generated/l10n.dart';

void main() async{

  await SupabaseService.initialize(
    url: supabaseUrl,
    anonKey: supabaseApiKey,
  );

  await Firebase.initializeApp(
      name: 'epsilon4all', options: DefaultFirebaseOptions.currentPlatform);

  MobileAds.instance.initialize();

  Routes.configureRoutes();

  MobileAds.instance.updateRequestConfiguration(
      RequestConfiguration(testDeviceIds: ['B91FBEE7ED7786CC628A3F4AF25B8545']));
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      scaffoldMessengerKey: snackbarKey,
      supportedLocales: const [
        Locale('en', 'US'),
        Locale('fr', 'FR'),
      ],
      localizationsDelegates: const [
        S.delegate,
      ],
      themeMode: ThemeMode.dark,
      theme: buildTheme(Brightness.light),
      darkTheme: buildTheme(Brightness.dark),
      onGenerateRoute: Routes.router.generator,
    );
  }
}
