import 'dart:ui';

import 'package:flutter/material.dart';

class Forget_password extends StatelessWidget {
  const Forget_password({Key? key}) : super(key: key);

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
                            " Forget Password ",
                            style: TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                          SizedBox(
                            height:
                            20,
                          ),
                          Column(
                            children: [
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
                                        suffixIcon: Icon(
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
                                        labelText: ' Your Email ',
                                        fillColor: Colors.white,
                                        filled: true,
                                        suffixIcon: Icon(
                                          Icons.email,
                                          color: Colors.black,
                                        ),
                                        border: OutlineInputBorder(),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20.0,
                                    ),
                                    ElevatedButton(
                                      child: Text(' Continue '),
                                      onPressed: () {
                                        print(' code sent ');
                                      },
                                      style: ElevatedButton.styleFrom(
                                        padding: EdgeInsets.all(20.0),
                                        fixedSize: Size(120, 70),
                                        textStyle: TextStyle(
                                            fontSize: 15, fontWeight: FontWeight.bold),
                                        primary: Colors.green,
                                        onPrimary: Colors.white,
                                        elevation: 15,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(40)),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 30.0,
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
                                        labelText: 'Inter code',
                                        fillColor: Colors.white,
                                        filled: true,
                                        suffixIcon: Icon(
                                          Icons.send,
                                          color: Colors.black,
                                        ),
                                        border: OutlineInputBorder(),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    ElevatedButton(
                                      child: Text(' Send code '),
                                      onPressed: () {
                                      },
                                      style: ElevatedButton.styleFrom(
                                        padding: EdgeInsets.all(20.0),
                                        fixedSize: Size(200, 70),
                                        textStyle: TextStyle(
                                            fontSize: 25, fontWeight: FontWeight.w700),
                                        primary: Colors.green,
                                        onPrimary: Colors.white,
                                        elevation: 15,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(40)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 100,
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

