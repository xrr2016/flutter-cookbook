// import 'dart:async';
// import 'dart:io';

// import 'package:camera/camera.dart';
// import 'package:flutter/material.dart';
// import 'package:path/path.dart';
// import 'package:path_provider/path_provider.dart';

// class TakePicturePage extends StatefulWidget {
//   @override
//   _TakePicturePageState createState() => _TakePicturePageState();
// }

// class _TakePicturePageState extends State<TakePicturePage> {
//   CameraController _controller;
//   Future<void> _initializeControllerFuture;

//   Future getCamera() async {
//     final cameras = await availableCameras();
//     final firstCamera = cameras.first;
//     return firstCamera;
//   }

//   @override
//   void initState() {
//     super.initState();

//     getCamera().then((camera) {
//       _controller = CameraController(
//         camera,
//         ResolutionPreset.medium,
//       );
//       _initializeControllerFuture = _controller.initialize();
//     });
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Take a picture using the camera')),
//       body: FutureBuilder<void>(
//         future: _initializeControllerFuture,
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.done) {
//             return CameraPreview(_controller);
//           } else {
//             return Center(child: CircularProgressIndicator());
//           }
//         },
//       ),
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.camera_alt),
//         // Provide an onPressed callback.
//         onPressed: () async {
//           // Take the Picture in a try / catch block. If anything goes wrong,
//           // catch the error.
//           try {
//             // Ensure that the camera is initialized.
//             await _initializeControllerFuture;

//             // Construct the path where the image should be saved using the
//             // pattern package.
//             final path = join(
//               // Store the picture in the temp directory.
//               // Find the temp directory using the `path_provider` plugin.
//               (await getTemporaryDirectory()).path,
//               '${DateTime.now()}.png',
//             );

//             // Attempt to take a picture and log where it's been saved.
//             await _controller.takePicture(path);

//             // If the picture was taken, display it on a new screen.
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (context) => DisplayPictureScreen(imagePath: path),
//               ),
//             );
//           } catch (e) {
//             // If an error occurs, log the error to the console.
//             print(e);
//           }
//         },
//       ),
//     );
//   }
// }

// class DisplayPictureScreen extends StatelessWidget {
//   final String imagePath;

//   const DisplayPictureScreen({Key key, this.imagePath}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Display the Picture')),
//       // The image is stored as a file on the device. Use the `Image.file`
//       // constructor with the given path to display the image.
//       body: Image.file(File(imagePath)),
//     );
//   }
// }
