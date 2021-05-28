import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/alert_page.dart';
import 'package:flutter_application_1/pages/avatars/circuleAvatar.dart';
import 'package:flutter_application_1/pages/avatars/circuleConBorder.dart';
import 'package:flutter_application_1/pages/avatars/rectangular.dart';
import 'package:flutter_application_1/pages/avatars/rectangularBorder.dart';
import 'package:flutter_application_1/pages/home_page.dart';

import 'pages/alert_page.dart';
import 'pages/avater_page.dart';
import 'pages/card_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Componentes App',
        routes:{
          '/':(BuildContext context) => HomePage(),
          'alert':(BuildContext context) => AlertPage(),
          'avatar':(BuildContext context) => AvatarPage(),
          'card':(BuildContext context) => CardPage(),

          'avatar/circular':(BuildContext context)=>CircularAvatar(),
          'avatar/circularBorde':(BuildContext context)=>CircularBordeAvatar(),
          'avatar/rectangulo':(BuildContext context)=>RectanguloAvatar(),
          'avatar/rectanguloBorde':(BuildContext context)=>RectanguloBordeAvatar(), 
        },
        debugShowCheckedModeBanner: false,
        );
  }
}