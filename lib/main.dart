import 'package:flutter/material.dart';
import 'package:whatsapp_ui/widgets/color.dart';
import 'package:whatsapp_ui/responsive/responsive_Layout.dart';
import 'package:whatsapp_ui/screen/mobile_Screen_Layout.dart';
import 'package:whatsapp_ui/screen/web_Screen_Layout.dart';

void main() {
  runApp(const WhatsappClone());
}

class WhatsappClone extends StatelessWidget {
  const WhatsappClone({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'whatsappClone',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
        // backgroundColor: backgroundColor,
        // colorScheme: ColorScheme.fromSeed(seedColor: backgroundColor),
      ),
      home: ResponsiveLayout(
          webScreenLayout: WebScreenLayout(),
          mobileScreenLayout: MobileScreenLayout()),
    );
  }
}
