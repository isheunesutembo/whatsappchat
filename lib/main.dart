import 'package:flutter/material.dart';
import 'package:whatsappchat/colors.dart';
import 'package:whatsappchat/responsive/responsive_layout.dart';
import 'package:whatsappchat/screens/mobile_screen_layout.dart';
import 'package:whatsappchat/screens/web_screen_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'WhatsApp',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: backgroundColor),
        home:const ResponsiveLayout(
          mobileScreenLayout: MobileScreenLayout(),
          webScreenLayout: WebScreenLayout(),
        ));
  }
}
