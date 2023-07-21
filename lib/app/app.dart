import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import '../utils/router.dart';
import '../utils/routes.dart';
import '../utils/styles.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      supportedLocales: const [
        Locale("ar"),
      ],
      locale: const Locale("ar"),
      localizationsDelegates: const [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      theme: ThemeData.light().copyWith(
        iconTheme: const IconThemeData(
          color: Color(0xFFE60023),
        ),
        appBarTheme: AppBarTheme(
          toolbarHeight: 64.0,
          backgroundColor: Colors.white,
          elevation: 0.5,
          centerTitle: true,
          titleTextStyle: StyleManager.titleStyle14.copyWith(
            fontWeight: FontWeight.w500,
            color: const Color(0xFF333333),
          ),
          iconTheme: IconThemeData(
            color: Colors.black,
          )
        )
      ),
      initialRoute: Routes.profileScreen,
      onGenerateRoute: RouterGenerator.onGenerateRoute,
    );
  }
}
