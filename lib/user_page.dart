import 'dart:io';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_processing/change_email.dart';
import 'package:image_processing/change_password.dart';
import 'package:image_processing/name_page.dart';


class UserPage extends StatefulWidget {
  static const String userPage = 'User_Page';

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  File file;
  _showOption(BuildContext context){
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
      file = image as File;
    });
    Navigator.pop(context);
  }
  Future _imageFromCamera (BuildContext context) async
  {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      file = image as File;
    });
    Navigator.pop(context);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white24,
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0.0,
        titleSpacing: 0.0,
        // backgroundColor: Colors.white24,

        title: Text(
            'Profile',
          style: TextStyle(
            fontSize: 25.0,
          ),
        ),
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
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.black26,
                        borderRadius: BorderRadius.circular(15.0)
                      ),
                      height: 160.0,
                      child: Column(
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: CircleAvatar(
                                  radius: MediaQuery.of(context).size.width * 0.11,
                                  backgroundColor: Colors.white,
                                  backgroundImage: file == null ? null :FileImage(File(file.path)),
                                  // child: file!=null
                                  //     ?Image.file(file,fit: BoxFit.fill,
                                  // ):
                                  child: file == null ?
                                  Icon(Icons.person,
                                  size: 45.0,
                                    color: Colors.black,
                                  ):null,
                                  // backgroundImage: AssetImage('image/person-icon.png'),
                                  // backgroundColor: Colors.black,

                                ),
                              ),
                             Stack(
                               alignment: AlignmentDirectional.center,
                               children: [
                                 CircleAvatar(
                                   radius: 15,
                                   backgroundColor: Colors.lightGreen,
                                 ),
                                 IconButton(
                                   onPressed: () =>_showOption(context),
                                   icon: Icon(
                                     Icons.edit,size: 25.0,
                                   ),
                                 style: ButtonStyle(
                                 ),),
                               ],
                             )
                            ],
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Text(
                            'UserName',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      height: 50.0,
                      decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.black26,
                      ) ,
                      child: Row(
                        children: [
                          Text(
                            ' Name',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                              ' : ',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            '',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                               IconButton(
                                   onPressed: (){
                                     Navigator.pushNamed(
                                       context,
                                       NamePage.namePage,
                                     );
                                   },
                                   icon: Icon(Icons.edit,
                                   color: Colors.white,)
                               ),
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      height: 50.0,
                      decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.black26,
                      ) ,
                      child: Row(
                        children: [
                          Text(
                            ' Email',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            ' : ',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            '',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                IconButton(
                                    onPressed: (){
                                      Navigator.pushNamed(
                                        context,
                                          ChangeEmail.changeEmail,
                                      );
                                    },
                                    icon: Icon(Icons.edit,
                                      color: Colors.white,)
                                ),
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      height: 50.0,
                      decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.black26,
                      ) ,
                      child: Row(
                        children: [
                          Text(
                            ' Password',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            ' : ',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            '',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                IconButton(
                                    onPressed: (){
                                      Navigator.pushNamed(
                                        context,
                                        ChangePass.changePass,
                                      );
                                    },
                                    icon: Icon(Icons.edit,
                                      color: Colors.white,)
                                ),
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),


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
