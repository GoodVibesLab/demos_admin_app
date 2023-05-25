import 'package:demos_app/routes/router.dart';
import 'package:demos_app/services/supabase_service.dart';
import 'package:demos_app/themes/themes.dart';
import 'package:demos_app/utils/constants.dart';
import 'package:flutter/material.dart';

void main() async{

  await SupabaseService.initialize(
    url: supabaseUrl,
    anonKey: supabaseApiKey,
  );

  Routes.configureRoutes();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: ThemeData(
          useMaterial3: true,
          colorScheme: lightColorScheme,
          textTheme: textTheme),
      darkTheme: ThemeData(
          useMaterial3: true,
          colorScheme: darkColorScheme,
          textTheme: textTheme),
      onGenerateRoute: Routes.router.generator,
    );
  }
}
