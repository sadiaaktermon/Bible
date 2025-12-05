import 'package:bible_journey/app/routes.dart';
import 'package:bible_journey/language_page.dart';
import 'package:bible_journey/main_bottom_nav_screen.dart';
import 'package:bible_journey/password_page.dart';
import 'package:bible_journey/profile_page.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.splash,
      home: const MainBottomNavScreen(),
    );
  }
}