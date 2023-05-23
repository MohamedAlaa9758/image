import 'dart:ui';
import 'package:flutter/material.dart';
import 'Forget_password.dart';
import 'Scanar_bage.dart';




class LoginPage extends StatefulWidget {
  static const String loginPage = 'Login_Page';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  bool isPassword =true;

  GlobalKey<FormState> logKey =GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('image/omar.png.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),

                  //#########################
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10.0,sigmaY: 10.0,),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Form(
                          key: logKey,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                " Log in ",
                                style: TextStyle(
                                    fontSize: 90,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                " To Continue ",
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                validator: (value)
                                {
                                  if (value == null ||value.isEmpty)
                                  {
                                    return 'Email must not be empty';
                                  }
                                  return null;
                                },
                                onFieldSubmitted: (String value) {
                                  print(value);
                                },
                                onChanged: (String value) {
                                  print(value);
                                },
                                decoration: InputDecoration(
                                  labelText: 'Email Address',
                                  fillColor: Colors.white,
                                  filled: true,
                                  prefixIcon: Icon(
                                    Icons.email,
                                    color: Colors.black,
                                  ),
                                  border: OutlineInputBorder(),
                                ),
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              TextFormField(
                                keyboardType: TextInputType.visiblePassword,
                                obscureText: isPassword,
                                validator: (value)
                                {
                                  if (value == null ||value.isEmpty)
                                  {
                                    return 'Password must not be empty';
                                  }
                                  return null;
                                },
                                onFieldSubmitted: (String value) {
                                  print(value);
                                },
                                onChanged: (String value) {
                                  print(value);
                                },
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  labelText: 'Password',
                                  prefixIcon: Icon(Icons.lock,
                                  color: Colors.black,),
                                  suffixIcon: IconButton(
                                    onPressed: (){
                                      setState(() {
                                        isPassword =!isPassword;
                                      });
                                    },
                                      icon: Icon( isPassword?Icons.visibility: Icons.visibility_off),
                                  ),
                                  border: OutlineInputBorder(),
                                ),
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 3, left: 3),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                    border: Border(
                                        bottom: BorderSide(color: Colors.black),
                                        top: BorderSide(color: Colors.black),
                                        right: BorderSide(color: Colors.black),
                                        left: BorderSide(color: Colors.black))),
                                child: MaterialButton(
                                  minWidth: double.infinity,
                                  height: 60,
                                  onPressed: () {
                                    if(logKey.currentState.validate())
                                    {
                                      print("You are Logged in");
                                      Navigator.pushNamed(
                                        context,
                                        ScanarPage.screenRoute,
                                      );
                                    }

                                  },
                                  color: Colors.lightGreen,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(40)),
                                  child: Text(
                                    "Log in",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 25,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 7.0,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Forget_password(),
                                    ),
                                  );
                                },
                                child: new Text(
                                  " Forget Password??",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              Text(
                                " or login with ",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 30.0),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      GestureDetector(
                                          onTap: () => print(' Login with Facebook '),
                                          child: Container(
                                            height: 50.0,
                                            width: 50.0,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black26,
                                                  offset: Offset(0, 2),
                                                  blurRadius: 6.0,
                                                ),
                                              ],
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    'image/face.jpg'),
                                              ),
                                            ),
                                          )),
                                      GestureDetector(
                                          onTap: () => print(' Login with google '),
                                          child: Container(
                                            height: 50.0,
                                            width: 50.0,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black26,
                                                  offset: Offset(0, 2),
                                                  blurRadius: 6.0,
                                                ),
                                              ],
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    'image/download.png'),
                                              ),
                                            ),
                                          )),
                                      GestureDetector(
                                          onTap: () => print(' Login with Icloud '),
                                          child: Container(
                                            height: 50.0,
                                            width: 50.0,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black26,
                                                  offset: Offset(0, 2),
                                                  blurRadius: 6.0,
                                                ),
                                              ],
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    'image/Apple.jpg'),
                                              ),
                                            ),
                                          )),
                                    ]),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}