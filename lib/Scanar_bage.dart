import 'dart:io';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_processing/Login_Plants.dart';
import 'package:image_processing/Loginpage.dart';
import 'package:image_processing/about_page.dart';

import 'user_page.dart';


class ScanarPage extends StatefulWidget {
  static const String screenRoute = 'Scanar_Page';

  @override
  State<ScanarPage> createState() => _ScanarPageState();

}

class _ScanarPageState extends State<ScanarPage> {
  File imageFile;
  _showOption(BuildContext context){
    // return
    //     Container(
    //
    //       width: 270,
    //       height: 270,
    //       decoration: BoxDecoration(
    //         borderRadius: BorderRadiusDirectional.circular(20.0),
    //         color: Colors.blueGrey,
    //       ),
    //       child: (imageFile == null)?_ScanarPageState():Image.file(imageFile,fit: BoxFit.cover,),
    //
    //           // ?Image.file(imageFile,width: 200, height: 200,):
    //       // Center(
    //       //   child: Text(
    //       //     ' Upload image to continue ',
    //       //     style: TextStyle(
    //       //       fontSize: 20.0,
    //       //     ),
    //       //   ),
    //       //   // Text(
    //       //   //   'Scan your plant to know the plant has disease or not? ',
    //       //   //   style: TextStyle(
    //       //   //     fontSize: 20.0,
    //       //   //     fontWeight: FontWeight.bold,
    //       //   //     color: Colors.black,
    //       //   //   ),
    //       //   // ),
    //       // ),
    //       // Text(
    //       //     ' Upload image to continue ',
    //       //   style: TextStyle(
    //       //     fontSize: 20.0,
    //       //   ),
    //       // ),
    // );

  return showDialog(context: context,
      builder: (context)=>
          AlertDialog(
            backgroundColor: Colors.grey,
            title: Text(
              ' Make a Choice '
            ),
            content: SingleChildScrollView(
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.image,
                    ),
                    title: Text(
                      'Gallery'
                    ),
                    onTap: ()
                    {
                      _imageFromGallery(context);
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.camera_alt,
                    ),
                    title: Text(
                        'Camera'
                    ),
                    onTap: ()
                    {
                      _imageFromCamera(context);
                    },
                  ),
                ],
              ),
            ),
          )
  );
  }
  Future _imageFromGallery (BuildContext context) async
  {
var image = await ImagePicker.pickImage(source: ImageSource.gallery);
  setState(() {
  imageFile = image;
  });
  Navigator.pop(context);
  }
  Future _imageFromCamera (BuildContext context) async
  {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      imageFile = image;
    });
    Navigator.pop(context);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer:Drawer(
        width: 250.0,
        child: ListView(
          children: [
            DrawerHeader(
                decoration:
                BoxDecoration(
              image: DecorationImage(
                image: AssetImage('image/omar.png.jpg'),
                fit: BoxFit.cover,
              ),
            ),
              child:
              Row(
            children: [
             CircleAvatar(
               child:
               CircleAvatar(
                 radius: 40.0,
                 backgroundImage: AssetImage('image/person-icon.png'),
                 backgroundColor: Colors.black,

               ),
             ),
              SizedBox(width: 10.0,),
              Text(
                'Hello : Username',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ],
          )),
            ListTile(
              title: Text(
                'Profile',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              leading: Icon(Icons.person,
              size: 30.0,
              color: Colors.black,),
              onTap: (){
                Navigator.pushNamed(
                  context,
                  UserPage.userPage,
                );
              },
            ),
            ListTile(
              title: Text(
                  'About',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              leading: Icon(Icons.info_outlined,
              size: 30.0,
              color: Colors.black,),
              onTap: (){
                Navigator.pushNamed(
                  context,
                  AboutPage.aboutPage,
                );
              },
            ),
            ListTile(
              title: Text(
                'Logout',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              leading: Icon(Icons.logout,
                size: 30.0,
                color: Colors.black,),
              onTap: (){
                Navigator.pushNamed(
                  context,
                  LoginPlants.loginPlants,
                );
              },
            ),
          ],
        ),

      ) ,
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white38,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        titleSpacing: 20.0,
        automaticallyImplyLeading: false,
        title: Text(
          '  Upload Image ',
          style: TextStyle(
            fontSize: 39.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        actions:[ Builder(
          builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              ),
            );
          }
      ),],
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
          filter: ImageFilter.blur(
            sigmaX: 10.0,
            sigmaY: 10.0,
          ),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    // Text(
                    //   'Scan your plant to know the plant has disease or not? ',
                    //   style: TextStyle(
                    //     fontSize: 20.0,
                    //     fontWeight: FontWeight.bold,
                    //     color: Colors.black,
                    //   ),
                    // ),
                    // SizedBox(
                    //   height: 40.0,
                    // ),
                    Container(
                      width: 250.0,
                      height: 250.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.circular(20.0),
                        color: Colors.white38,
                      ),
                      child:
                      imageFile!=null
                          ?Image.file(imageFile,fit: BoxFit.contain,
                      ):
                      Center(
                        child: Text(
                          ' Upload image to continue ',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                        // Text(
                        //   'Scan your plant to know the plant has disease or not? ',
                        //   style: TextStyle(
                        //     fontSize: 20.0,
                        //     fontWeight: FontWeight.bold,
                        //     color: Colors.black,
                        //   ),
                        // ),
                      ),
                      // Text(
                      //     ' Upload image to continue ',
                      //   style: TextStyle(
                      //     fontSize: 20.0,
                      //   ),
                      // ),
                    ),
                   //  SizedBox(
                   //    height: 70.0,
                   //  ),
                   // Container(
                   //   decoration: BoxDecoration(
                   //     color: Colors.grey,
                   //     borderRadius: BorderRadius.circular(15.0),
                   //   ),
                   //   child: MaterialButton(onPressed: (){
                   //     _imageFromCamera(context);
                   //   },
                   //   child:Row(
                   //     children: [
                   //       Icon(Icons.camera_alt_outlined,),
                   //       SizedBox(
                   //         width: 20.0,
                   //       ),
                   //       Text(
                   //         'Take a photo'
                   //       )
                   //     ],
                   //   ),
                   //
                   //   ),
                   // ),
                   //  SizedBox(
                   //    height: 20.0,
                   //  ),
                   //  Container(
                   //    decoration: BoxDecoration(
                   //      color: Colors.grey,
                   //      borderRadius: BorderRadius.circular(15.0),
                   //    ),
                   //    child: MaterialButton(onPressed: (){
                   //      _imageFromGallery(context);
                   //    },
                   //      child:Row(
                   //        children: [
                   //          Icon(Icons.image,),
                   //          SizedBox(
                   //            width: 20.0,
                   //          ),
                   //          Text(
                   //              'Pick from gallery'
                   //          )
                   //        ],
                   //      ),
                   //
                   //    ),
                   //  ),
                  SizedBox(
                    height: 50.0,
                  ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.green,
                          ),
                          height: 50.0,
                          child:
                          TextButton(
                            onPressed: () {
                              _showOption(context);
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'UPLOAD IMAGE',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25.0,
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
                    // Stack(
                    //   alignment: AlignmentDirectional.center,
                    //   children: [
                    //     Stack(
                    //       alignment: AlignmentDirectional.topCenter,
                    //       children: [
                    //         Container(
                    //           decoration: BoxDecoration(
                    //             borderRadius: BorderRadius.circular(
                    //               30.0,
                    //             ),
                    //           ),
                    //           clipBehavior: Clip.antiAliasWithSaveLayer,
                    //           child: Image(
                    //             image: AssetImage('image/3.jpg'),
                    //             height: 300.0,
                    //             fit: BoxFit.cover,
                    //           ),
                    //         ),
                    //         Padding(
                    //           padding: const EdgeInsetsDirectional.only(
                    //             end: 10.0,
                    //             start: 10.0,
                    //             top: 50.0,
                    //           ),
                    //           child:
                    //           Text(
                    //             'Scan your plant to know the plant has disease or not?',
                    //             style: TextStyle(
                    //               fontSize: 20.0,
                    //               fontWeight: FontWeight.bold,
                    //               color: Colors.black,
                    //             ),
                    //           ),
                    //         ),
                    //       ],
                    //     ),
                    //     Padding(
                    //       padding: const EdgeInsetsDirectional.only(
                    //         top: 40.0,
                    //       ),
                    //       child:
                    //       Row(
                    //         mainAxisAlignment: MainAxisAlignment.center,
                    //         children: [
                    //           Container(
                    //             decoration: BoxDecoration(
                    //               borderRadius: BorderRadius.circular(10.0),
                    //               color: Colors.green,
                    //             ),
                    //             height: 40.0,
                    //             child: TextButton(
                    //               onPressed: () {
                    //                 Navigator.pushNamed(
                    //                   context,
                    //                   ScanarResult.screenResult,
                    //                 );
                    //               },
                    //               child: Row(
                    //                 mainAxisAlignment: MainAxisAlignment.center,
                    //                 mainAxisSize: MainAxisSize.min,
                    //                 children: [
                    //                   Text(
                    //                     'UPLOAD IMAGE',
                    //                     style: TextStyle(
                    //                       color: Colors.white,
                    //                       fontSize: 17.0,
                    //                     ),
                    //                   ),
                    //                   SizedBox(
                    //                     width: 30.0,
                    //                   ),
                    //                   Icon(
                    //                     Icons.upload,
                    //                     color: Colors.white,
                    //                   ),
                    //                 ],
                    //               ),
                    //             ),
                    //           ),
                    //         ],
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






// import 'dart:io';
// import 'dart:ui';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'Result_scanar.dart';
//
// class ScanarPage extends StatelessWidget {
//   static const String screenRoute = 'Scanar_Page';
//   late File imageFile;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBodyBehindAppBar: true,
//       backgroundColor: Colors.white38,
//       // appBar: AppBar(
//       //   backgroundColor: Colors.transparent,
//       //   elevation: 0.0,
//       //   titleSpacing: 20.0,
//       //   automaticallyImplyLeading: false,
//       //   title: Row(
//       //     children: [
//       //
//       //     ],
//       //   ),
//       // //   actions:[ Builder(
//       // //     builder: (context) {
//       // //       return IconButton(
//       // //         onPressed: () {
//       // //           Scaffold.of(context).openEndDrawer();
//       // //         },
//       // //         icon: Icon(
//       // //           Icons.menu,
//       // //           color: Colors.black,
//       // //         ),
//       // //       );
//       // //     }
//       // // ),],
//       // ),
//       body: Container(
//         height: MediaQuery.of(context).size.height,
//         width: double.infinity,
//         decoration: const BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage('image/omar.png.jpg'),
//             fit: BoxFit.cover,
//           ),
//         ),
//
//         //#########################
//         child: BackdropFilter(
//           filter: ImageFilter.blur(
//             sigmaX: 10.0,
//             sigmaY: 10.0,
//           ),
//           child: SafeArea(
//             child: Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: Column(
//                 children: [
//                   Text(
//                     ' Upload Image ',
//                     style: TextStyle(
//                       fontSize: 39.0,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black,
//                     ),
//                   ),
//                   SizedBox(
//                     height: 15.0,
//                   ),
//                   Text(
//                     'Scan your plant to know the plant has disease or not? ',
//                     style: TextStyle(
//                       fontSize: 20.0,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black,
//                     ),
//                   ),
//                   SizedBox(
//                     height: 200.0,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Container(
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10.0),
//                           color: Colors.green,
//                         ),
//                         height: 40.0,
//                         child: TextButton(
//                           onPressed: () {
//                             Navigator.pushNamed(
//                               context,
//                               ScanarResult.screenResult,
//                             );
//                           },
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             mainAxisSize: MainAxisSize.min,
//                             children: [
//                               Text(
//                                 'UPLOAD IMAGE',
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 17.0,
//                                 ),
//                               ),
//                               SizedBox(
//                                 width: 30.0,
//                               ),
//                               Icon(
//                                 Icons.upload,
//                                 color: Colors.white,
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   // Stack(
//                   //   alignment: AlignmentDirectional.center,
//                   //   children: [
//                   //     Stack(
//                   //       alignment: AlignmentDirectional.topCenter,
//                   //       children: [
//                   //         Container(
//                   //           decoration: BoxDecoration(
//                   //             borderRadius: BorderRadius.circular(
//                   //               30.0,
//                   //             ),
//                   //           ),
//                   //           clipBehavior: Clip.antiAliasWithSaveLayer,
//                   //           child: Image(
//                   //             image: AssetImage('image/3.jpg'),
//                   //             height: 300.0,
//                   //             fit: BoxFit.cover,
//                   //           ),
//                   //         ),
//                   //         Padding(
//                   //           padding: const EdgeInsetsDirectional.only(
//                   //             end: 10.0,
//                   //             start: 10.0,
//                   //             top: 50.0,
//                   //           ),
//                   //           child:
//                   //           Text(
//                   //             'Scan your plant to know the plant has disease or not?',
//                   //             style: TextStyle(
//                   //               fontSize: 20.0,
//                   //               fontWeight: FontWeight.bold,
//                   //               color: Colors.black,
//                   //             ),
//                   //           ),
//                   //         ),
//                   //       ],
//                   //     ),
//                   //     Padding(
//                   //       padding: const EdgeInsetsDirectional.only(
//                   //         top: 40.0,
//                   //       ),
//                   //       child:
//                   //       Row(
//                   //         mainAxisAlignment: MainAxisAlignment.center,
//                   //         children: [
//                   //           Container(
//                   //             decoration: BoxDecoration(
//                   //               borderRadius: BorderRadius.circular(10.0),
//                   //               color: Colors.green,
//                   //             ),
//                   //             height: 40.0,
//                   //             child: TextButton(
//                   //               onPressed: () {
//                   //                 Navigator.pushNamed(
//                   //                   context,
//                   //                   ScanarResult.screenResult,
//                   //                 );
//                   //               },
//                   //               child: Row(
//                   //                 mainAxisAlignment: MainAxisAlignment.center,
//                   //                 mainAxisSize: MainAxisSize.min,
//                   //                 children: [
//                   //                   Text(
//                   //                     'UPLOAD IMAGE',
//                   //                     style: TextStyle(
//                   //                       color: Colors.white,
//                   //                       fontSize: 17.0,
//                   //                     ),
//                   //                   ),
//                   //                   SizedBox(
//                   //                     width: 30.0,
//                   //                   ),
//                   //                   Icon(
//                   //                     Icons.upload,
//                   //                     color: Colors.white,
//                   //                   ),
//                   //                 ],
//                   //               ),
//                   //             ),
//                   //           ),
//                   //         ],
//                   //       ),
//                   //     ),
//                   //   ],
//                   // ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
