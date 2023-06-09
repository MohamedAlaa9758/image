import 'dart:ui';

import 'package:flutter/material.dart';

import 'Loginpage.dart';

class SginupPage extends StatelessWidget {
  static const String sginupPage = 'Sginup_Page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Expanded(
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Sign Up",
                          style: TextStyle(
                              fontSize: 70,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Column(
                          children: [
                            Text(
                              " To Continue ",
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 40),
                              child: Column(
                                children: [
                                  TextFormField(
                                    keyboardType: TextInputType.emailAddress,
                                    onFieldSubmitted: (String value) {
                                      print(value);
                                    },
                                    onChanged: (String value) {
                                      print(value);
                                    },
                                    decoration: InputDecoration(
                                      labelText: ' Full name ',
                                      fillColor: Colors.white,
                                      filled: true,
                                      prefixIcon: Icon(
                                        Icons.account_circle,
                                        color: Colors.black,
                                      ),
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.0,
                                  ),
                                  TextFormField(
                                    keyboardType: TextInputType.emailAddress,
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
                                    keyboardType: TextInputType.emailAddress,
                                    onFieldSubmitted: (String value) {
                                      print(value);
                                    },
                                    onChanged: (String value) {
                                      print(value);
                                    },
                                    decoration: const InputDecoration(
                                      labelText: 'PassWord',
                                      fillColor: Colors.white,
                                      filled: true,
                                      prefixIcon: Icon(
                                        Icons.lock,
                                        color: Colors.black,
                                      ),
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 40),
                              child: Container(
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
                                  height: 50,
                                  onPressed: () {
                                    print("You are Sign Up");
                                    Navigator.pushNamed(
                                      context,
                                     LoginPage.loginPage,
                                    );
                                  },
                                  color: Colors.lightGreen,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(40)),
                                  child: Text(
                                    " Sign Up ",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => LoginPage(),
                                      ),
                                    );
                                  },
                                  child: new Text(
                                    "Already have an account??",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Text(
                                  " OR Login With ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                    color: Colors.white,
                                  ),
                                ),

                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 30.0),
                              child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                                  children: [
                                    GestureDetector(
                                        onTap: () => print(' sign up with Facebook '),
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
                                        onTap: () => print(' sign up with google '),
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
                                        onTap: () => print(' sign up with Icloud '),
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
                      ],
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
