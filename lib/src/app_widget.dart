import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Mockup desafio 1',
      theme: ThemeData.light().copyWith(
        iconTheme: const IconThemeData(
          color: Color(0xff6e6e6e),
        ),
        scaffoldBackgroundColor: const Color(0xffffffff),
        highlightColor: const Color(0xfff3f2f3),
        cardColor: const Color(0xffffffff),
        colorScheme: const ColorScheme.light().copyWith(
          primary: const Color(0xfffe5e50),
          secondary: const Color(0xffffffff),
        ),
        textTheme: TextTheme(
          bodyLarge: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Color(0xff383d41),
          ),
          bodyMedium: const TextStyle(
            fontSize: 12.5,
            fontWeight: FontWeight.w500,
            color: Color(0xff383d41),
          ),
          bodySmall: TextStyle(
            fontSize: 12.5,
            fontWeight: FontWeight.w500,
            color: const Color(0xff383d41).withOpacity(.5),
          ),
        ),
      ),
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
    );
  }
}
