import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:projeto_tcc/screens/dashboard.dart';
import 'package:projeto_tcc/screens/signin_signup/SignUpIn.dart';
import 'screens/dashboardPages/homePages/produtosPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DeMarket',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: [const Locale('pt', 'BR')],
      home: const Dashboard(),
    );
  }
}
