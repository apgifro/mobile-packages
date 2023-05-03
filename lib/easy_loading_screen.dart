import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class EasyScreen extends StatefulWidget {
  const EasyScreen({Key? key}) : super(key: key);

  @override
  State<EasyScreen> createState() => _EasyScreenState();
}

class _EasyScreenState extends State<EasyScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Easy Loading'),),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              child: Text('Clique'),
              onPressed: ()  {
                  EasyLoading.show(status: 'Carregando...');
              },
            ),
          ],
        ),
      ),
    );
  }
}