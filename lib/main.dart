import 'package:flutter/material.dart';
// import 'package:flutter_translate/flutter_translate.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:kulona_amni/phone.dart';
import 'package:kulona_amni/verify.dart';
import 'package:kulona_amni/chooselanguage.dart';
import 'package:kulona_amni/dashboard.dart';

void main() async {
  // var delegate = await LocalizationDelegate.create(
  //     fallbackLocale: 'en', supportedLocales: ['en', 'so', 'ar']);

  // runApp(LocalizedApp(delegate, MyApp()));
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
        supportedLocales: [Locale('en'), Locale('en', 'SO'), Locale('ar')],
        path: 'assets/i18n', // <-- change the path of the translation files
        fallbackLocale: Locale('en'),
        child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // var localizationDelegate = LocalizedApp.of(context).delegate;

    return MaterialApp(
      initialRoute: 'chooselanguage',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: LanguageScreen(),
      routes: {
        'chooselanguage': (context) => LanguageScreen(),
        'phone': (context) => MyPhone(),
        'verify': (context) => MyVerify(),
        'dashboard': (context) => DashboardScreen()
      },
    );
  }
}
