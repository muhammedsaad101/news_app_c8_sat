import 'package:flutter/material.dart';
import 'package:news_app_c8_v3/home/home_screen.dart';
import 'package:news_app_c8_v3/home/splash_screen.dart';
import 'package:news_app_c8_v3/styles/my_theme.dart';

void main(){
  runApp(MyApplication());
}
class MyApplication extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomeScreen.routeName: (_)=> HomeScreen(),
        SplashScreen.routeName : (_)=> SplashScreen(),
      },
      initialRoute: SplashScreen.routeName,
      theme: MyThemeData.lightTheme,
      themeMode: ThemeMode.light,
    );
  }
}
