import 'package:flutter/material.dart';
import 'config/app_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Dashboard',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.dark(
          surface: const Color(0xFF212332),
          primary: const Color(0xFF2A2D3E),
          secondary: const Color(0xFF2697FF),
        ),
        scaffoldBackgroundColor: const Color(0xFF212332),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Color(0xFFF9F9FA)),
          bodyMedium: TextStyle(color: Color(0xFFF9F9FA)),
        ),
        useMaterial3: true,
      ),
      routerConfig: router,
    );
  }
}
