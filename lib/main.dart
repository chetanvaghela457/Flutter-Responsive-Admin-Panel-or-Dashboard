import 'package:flutter/material.dart';
import 'package:flutter_responsive_admin_panel_or_dashboard/routes.dart';
import 'package:flutter_responsive_admin_panel_or_dashboard/routes/app_routes.dart';
import 'package:flutter_responsive_admin_panel_or_dashboard/utils/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive Dashboard',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppConstants.clrBackground,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: AppRoutes.mainScreen,
      routes: routes,
    );
  }
}
