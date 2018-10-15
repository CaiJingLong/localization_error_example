import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:localization_error_example/chinese_localization.dart';

void main() => runApp(new MyApp());

Iterable<LocalizationsDelegate<dynamic>> localDelegates = <LocalizationsDelegate<dynamic>>[
  // ... app-specific localization delegate[s] here
  ChineseCupertinoLocalizations.delegate,
  // DefaultCupertinoLocalizations.delegate,
  GlobalMaterialLocalizations.delegate,
  GlobalWidgetsLocalizations.delegate,
];

var locale = <Locale>[
  const Locale('en'), // English
  const Locale('zh'), // China
  // ... other locales the app supports
];

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Localizations(
      child: new MaterialApp(
        title: 'Flutter Demo',
        theme: new ThemeData(
          primarySwatch: Colors.blue,
          platform: TargetPlatform.iOS,
        ),
        home: TextFieldExample(),
        localizationsDelegates: localDelegates,
        supportedLocales: locale,
      ),
      delegates: localDelegates,
      locale: const Locale('zh'),
    );
  }
}

class TextFieldExample extends StatefulWidget {
  @override
  _TextFieldExampleState createState() => _TextFieldExampleState();
}

class _TextFieldExampleState extends State<TextFieldExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: TextField(),
      ),
    );
  }
}
