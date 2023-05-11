import 'package:flutter/material.dart';
import 'package:image_processing/Loginpage.dart';
import 'package:image_processing/SginUp.dart';
import 'Login_Plants.dart';
import 'Result_scanar.dart';
import 'Scanar_bage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      initialRoute: LoginPlants.loginPlants,
      routes: {
        LoginPlants.loginPlants:(context) =>LoginPlants(),
          ScanarPage.screenRoute:(context) =>ScanarPage(),
        ScanarResult.screenRoute:(context) =>ScanarResult(),
        LoginPage.loginPage:(context) => LoginPage(),
        SginupPage.sginupPage:(context) => SginupPage(),


      },
    );
  }
}
