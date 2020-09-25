import 'package:flutter/material.dart';

import 'Home/home_page.dart';
import 'Login/login_page.dart';
import 'routes/routes.dart';

class AppMaterial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login App',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      routes: {
        AppRoutes.LOGIN: (_) => LoginPage(),
        AppRoutes.HOME: (_) => HomePage(),
      },
      initialRoute: AppRoutes.LOGIN,
    );
  }
}