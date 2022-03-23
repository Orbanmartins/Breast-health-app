// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, non_constant_identifier_names, unrelated_type_equality_checks, avoid_print

import 'package:breast_health_app/Constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:sizer/sizer.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class UploadHealthData extends StatefulWidget {
  const UploadHealthData({Key? key}) : super(key: key);

  @override
  State<UploadHealthData> createState() => _UploadHealthDataState();
}

class _UploadHealthDataState extends State<UploadHealthData> {
  File? _image;
  final ImagePicker _picker = ImagePicker();
  Future<void> getImage() async {
    final image = await _picker.pickImage(source: ImageSource.camera);

    if (image != null) {
      setState(() => _image = File(image.path));
    }
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Upload Health Data',
              style: TextStyle(
                color: mainColor,
              )),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back),
            color: mainColor,
          ),
          backgroundColor: Colors.white,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            padding: EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text('Upload your health data'),
                      Text(
                          'File size must be between 10KB and 512KB in ..jpg/.jpeg/.png format',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: grayshade,
                              fontSize: 18, fontWeight: FontWeight.w500)),
                    ],
                  ),
                  Stack(
                    children: <Widget>[
                      Container(
                          margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                          child: _image == null
                              ? Container(
                                  height: 30.h,
                                  width: 80.w,
                                  decoration: BoxDecoration(
                                    color: cameraColor,
                                    border: Border.all(
                                      color: cameraColor,
                                    ),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10.0)),
                                  ),
                                  child: InkWell(
                                    onTap: openCamera,
                                    child: Icon(Icons.camera_alt_rounded,
                                        size: 80, color: grayshade),
                                  ))
                              : ClipOval(
                                  child: Image.file(_image!,
                                      fit: BoxFit.cover,
                                      height: 162,
                                      width: 161))),
                      Positioned(
                        left: 80,
                        right: 0,
                        bottom: 0,
                        child: Column(
                          children: [
                            SizedBox(
                              width: 40,
                              height: 40,
                              child: FloatingActionButton(
                                  backgroundColor: mainColor,
                                  onPressed: RemoveImage,
                                  child: Icon(
                                    Icons.delete_forever,
                                    color: Colors.white,
                                    size: 30,
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  _image == null
                      ? Text('')
                      : TextButton(
                          onPressed: () => {uploadImage(_image!.path)},
                          child: Container(
                              // height: 70,
                              // margin: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                              decoration: BoxDecoration(
                                color: mainColor,
                                borderRadius: BorderRadius.circular(3),
                                boxShadow: kElevationToShadow[3],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Text(
                                  "Upload File",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                ),
                              )),
                        ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(15, 10, 15, 20),
                    child: const Text(
                      'This information can be used for reference wherever you are',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }

  Future<void> openCamera() async {
    var CameraStatus = await Permission.camera;
    var GalleryStatus = await Permission.storage;
 

    if (CameraStatus.isGranted != true) {
      await Permission.camera.request();
    }
    if (GalleryStatus.isGranted != true) {
      Permission.storage.request();
    }
    if (await Permission.camera.isGranted) {
      if (await Permission.storage.isGranted) {
        ShowPicker(context);
      }
    }
  }

  Future<void> galleryImage() async {
    final image = await _picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() => _image = File(image.path));
    }
    Navigator.pop(context);
  }

  void RemoveImage() {
    setState(() {
      _image = null;
    });
  }

  void ShowPicker(content) {
    showDialog(
        context: context,
        builder: (BuildContext bc) {
          return AlertDialog(
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                    leading: Icon(Icons.library_books),
                    title: Text('Gallery'),
                    onTap: galleryImage),
                ListTile(
                    leading: Icon(Icons.camera),
                    title: Text('Camera'),
                    onTap: getImage)
              ],
            ),
          );
        });
  }

  uploadImage(String filename) async {
    // String? username = dotenv.env['username'];
    // String? password = dotenv.env['password'];
    // String basicAuth =
    //     'Basic ' + base64Encode(utf8.encode('$username:$password'));
    var request = http.MultipartRequest(
        'POST', Uri.parse("https://chapchap-backend.herokuapp.com/upload"));
    request.headers.addAll({
      // "Authorization": basicAuth,
      // "content-type": "multipart/form-data"
    });
    request.fields['uploadType'] = "selfie";
    request.files.add(await http.MultipartFile.fromPath('file', filename));
    print({'req': request});
    var res = await request.send();
    print({'res': res.statusCode});
    return res.stream.bytesToString();
  }
}
