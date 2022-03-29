import 'package:flutter/material.dart';
import 'package:jidetaiwoapp/hextocolor.dart';
import 'package:jidetaiwoapp/screens/Advisory_screen.dart';
import 'package:jidetaiwoapp/screens/Change_password_screen.dart';
import 'package:jidetaiwoapp/screens/Facility_management_screen.dart';
import 'package:jidetaiwoapp/screens/Project_Management_Screen.dart';
import 'package:jidetaiwoapp/screens/agentlisting_screen.dart';
import 'package:jidetaiwoapp/screens/clientlogin_screen.dart';
import 'package:jidetaiwoapp/screens/clientsignup_screen.dart';
import 'package:jidetaiwoapp/screens/complaints_screen.dart';
import 'package:jidetaiwoapp/screens/dashboard_screen.dart';
import 'package:jidetaiwoapp/screens/exploreproperty_screen.dart';
import 'package:jidetaiwoapp/screens/home_screen.dart';
import 'package:jidetaiwoapp/screens/my_properties_screen.dart';
import 'package:jidetaiwoapp/screens/onboarding_screen.dart';
import 'package:jidetaiwoapp/screens/profile_screen.dart';
import 'package:jidetaiwoapp/screens/public_sector_screen.dart';
import 'package:jidetaiwoapp/screens/searchforproperty_screen.dart';
import 'package:jidetaiwoapp/screens/splash_screen.dart';
import 'package:jidetaiwoapp/screens/valuation_screen.dart';
import 'package:jidetaiwoapp/screens/get_in_touch.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jide Taiwo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: hextocolor('#D30016'),
        colorScheme: ThemeData().colorScheme.copyWith(
          secondary: hextocolor('#FFEEED')
        ),
        brightness: Brightness.light,
        fontFamily: 'Roboto',
        textTheme: const TextTheme(
          headline1: TextStyle(fontFamily: 'Roboto',fontSize: 72.0, fontWeight: FontWeight.bold),
          headline6: TextStyle(fontFamily: 'Roboto',fontSize: 36.0, fontStyle: FontStyle.normal),
          bodyText1: TextStyle(fontSize: 14.0, fontFamily: 'Roboto'),
          button: TextStyle(fontFamily: 'Roboto', fontSize: 18, color: Colors.white)
        ),
      ),
      home: PropertiesScreen()
    );
  }
}
