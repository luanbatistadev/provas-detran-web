import 'package:flutter/material.dart';
import 'package:simulados_detran_web/src/perguntas.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF1E1D26),
        ),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: const Color(0xFF1E1D26),
        ),
        scaffoldBackgroundColor: const Color(0xFF1E1D26),
      ),
      home: const Perguntas(),
    );
  }
}