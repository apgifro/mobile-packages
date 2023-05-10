import 'package:flutter/material.dart';

import 'package:device_preview/device_preview.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:packs/photo_screen.dart';
import 'package:packs/text_screen.dart';
import 'package:packs/video_screen.dart';

import 'cpf_screen.dart';
import 'easy_loading_screen.dart';
import 'email_screen.dart';
import 'home_screen.dart';

void main() {
  runApp(DevicePreview(
      enabled: true,
      builder: (BuildContext context) => MaterialApp(
          useInheritedMediaQuery: true,
          locale: DevicePreview.locale(context),
          builder: (context, child) {
            child = DevicePreview.appBuilder(context, child);
            child = EasyLoading.init()(context, child);
            return child;
          },

          debugShowCheckedModeBanner: false,

          theme: ThemeData(
            colorSchemeSeed: Colors.blueAccent,
            useMaterial3: true,
          ),

          initialRoute: '/home',
          onGenerateRoute: (RouteSettings settings) {
            switch (settings.name) {
              case '/home':
                return MaterialPageRoute(builder: (context) => HomeScreen());
              case '/video_player':
                return MaterialPageRoute(builder: (context) => VideoScreen());
              case '/photo_view':
                return MaterialPageRoute(builder: (context) => PhotoScreen());
              case '/animated_text':
                return MaterialPageRoute(builder: (context) => TextScreen());
              case '/easy_loading':
                return MaterialPageRoute(builder: (context) => EasyScreen());
              case '/email_validator':
                return MaterialPageRoute(builder: (context) => EmailScreen());
              case '/cpf_validator':
                return MaterialPageRoute(builder: (context) => CPFScreen());
            }
          })));
}