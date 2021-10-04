import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:theme_provider/providers/counter_provider.dart';
import 'package:theme_provider/providers/theme_provider.dart';
import 'package:theme_provider/routes/routes.dart';
import 'package:theme_provider/themes/custom_theme.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<ThemeProvider>(
          create: (context) => ThemeProvider(),
        ),
        ChangeNotifierProvider<CounterProvider>(
          create: (context) => CounterProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      title: 'Theme Provider',
      debugShowCheckedModeBanner: false,
      themeMode: themeProvider.getTheme,
      theme: CustomTheme.lightTheme,
      darkTheme: CustomTheme.darkTheme,
      routes: Routes.routes,
      initialRoute: Routes.splash,
    );
  }
}
