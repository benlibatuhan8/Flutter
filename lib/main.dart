import 'package:flutter/material.dart';
import 'package:instaclone_main/responsive/mobile_screen_layout.dart';
import 'package:instaclone_main/responsive/responsive_layout_screen.dart';
import 'package:instaclone_main/responsive/web_screen_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram Clone',
      theme: ThemeData.dark()
          .copyWith(scaffoldBackgroundColor: Color.fromRGBO(0, 0, 0, 1)),
      home: ResponsiveLayout(
        mobileScreenLayout: MobileScreenLayout(),
        webScreenLayout: WebScreenLayout(),
      ),
    );
  }
}
