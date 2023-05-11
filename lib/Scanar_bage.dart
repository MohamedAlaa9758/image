  import 'dart:ui';
import 'package:flutter/cupertino.dart';
  import 'package:flutter/material.dart';
import 'package:image_processing/main.dart';
  import'Result_scanar.dart';

  class ScanarPage extends StatelessWidget {
    static const String screenRoute = 'Scanar_Page';

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white38,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          titleSpacing: 20.0,
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              Text(
                'Hello: Username',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              // SizedBox(
              //   width: 30.0,
              // ),
              // Container(
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(20.0),
              //     color: Colors.green,
              //   ),
              //   height: 40.0,
              //   child: TextButton(
              //     onPressed: () {},
              //     child: Text(
              //       'Contact Us',
              //       style: TextStyle(
              //         color: Colors.white,
              //         fontSize: 17.0,
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: (){},
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              ),)
          ],
        ),
        body: Container(
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
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child:
                Column(
                  children: [
                    SizedBox(
                      height: 20.0,
                    ),
                    Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.topCenter,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  30.0,
                                ),
                              ),
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              child: Image(
                                image: AssetImage('image/3.jpg'),
                                height: 300.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                end: 10.0,
                                start: 10.0,
                                top: 50.0,
                              ),
                              child: Text(
                                'Scan your plant to know the plant has disease or not?',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.only(
                            top: 40.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.green,
                                ),
                                height: 40.0,
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                      context,
                                      ScanarResult.screenRoute,
                                    );
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        'UPLOAD IMAGE',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 17.0,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 30.0,
                                      ),
                                      Icon(
                                        Icons.upload,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    }
  }
