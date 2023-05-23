import 'package:flutter/material.dart';
import 'package:image_processing/Forget_password.dart';
import 'package:image_processing/Loginpage.dart';
import 'package:image_processing/SginUp.dart';
import 'package:image_processing/about_page.dart';
import 'package:image_processing/change_email.dart';
import 'package:image_processing/change_password.dart';
import 'package:image_processing/name_page.dart';
import 'package:image_processing/new_paasword.dart';
import 'package:image_processing/user_page.dart';
import 'Login_Plants.dart';
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
        LoginPage.loginPage:(context) => LoginPage(),
        SginupPage.sginupPage:(context) => SginupPage(),
        UserPage.userPage:(context) => UserPage(),
        NamePage.namePage:(context) => NamePage(),
        ChangePass.changePass:(context)=>ChangePass(),
        ChangeEmail.changeEmail:(context) => ChangeEmail(),
        Forget_password.forgetPassword:(context) => Forget_password(),
        NewPassword.newPassword:(context)=>NewPassword(),
        AboutPage.aboutPage:(context)=>AboutPage(),
      },
    );
  }
}
