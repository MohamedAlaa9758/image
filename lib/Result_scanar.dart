import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_processing/Scanar_bage.dart';

class ScanarResult extends StatelessWidget {
  static const String screenRoute = 'Result_scanar';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white38,
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
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: SafeArea(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.only(
                        top: 20.0,
                        bottom: 10.0,
                      ),
                      child: Text(
                        'Scanner Results',
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          30.0,
                        ),
                      ),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Image(
                        image: AssetImage('image/3.jpg'),
                        height: 200.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Container(

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Is the plant sick or not?',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                           Text(
                              'Yes',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                        ],
                      ),
                    ),
                    // SizedBox(
                    //   height: 30.0,
                    // ),
                    // Text(
                    //   'Do you need upload anather image?',
                    //   style: TextStyle(
                    //     fontSize: 17.0,
                    //     color: Colors.green,
                    //   ),
                    // ),
                    // SizedBox(
                    //   height: 20.0,
                    // ),
                    // Row(
                    //   mainAxisSize: MainAxisSize.min,
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: [
                    //     Container(
                    //       decoration: BoxDecoration(
                    //         borderRadius: BorderRadius.circular(10.0),
                    //         color: Colors.green,
                    //       ),
                    //       height: 40.0,
                    //       width: 60.0,
                    //       child: TextButton(
                    //         onPressed: () {
                    //           Navigator.pushNamed(context, ScanarPage.screenRoute);
                    //         },
                    //         child: Text(
                    //           ' Yes',
                    //           style: TextStyle(
                    //             color: Colors.white,
                    //             fontSize: 20.0,
                    //           ),
                    //         ),
                    //       ),
                    //     ),
                    //     SizedBox(
                    //       width: 15.0,
                    //     ),
                    //     Container(
                    //       decoration: BoxDecoration(
                    //         borderRadius: BorderRadius.circular(10.0),
                    //         color: Colors.green,
                    //       ),
                    //       height: 40.0,
                    //       width: 60.0,
                    //       child: TextButton(
                    //         onPressed: () {},
                    //         child: Text(
                    //           ' No',
                    //           style: TextStyle(
                    //             color: Colors.white,
                    //             fontSize: 20.0,
                    //           ),
                    //         ),
                    //       ),
                    //     ),
                    //   ],
                    // ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
