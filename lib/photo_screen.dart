import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class PhotoScreen extends StatefulWidget {
  const PhotoScreen({Key? key}) : super(key: key);

  @override
  State<PhotoScreen> createState() => _PhotoScreenState();
}

class _PhotoScreenState extends State<PhotoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Photo View', style: TextStyle(color: Colors.black),),
      ),
      body: Container(
          child: PhotoView(
            imageProvider: NetworkImage('https://blogdosuperapple.com.br/wp-content/uploads/2019/06/macOS-Catalina-Light-mode.jpg'),
          )
      )
    );
  }
}
