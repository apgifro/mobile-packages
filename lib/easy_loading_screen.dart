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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: Text('Carregando...'),
                  onPressed: ()  {
                      EasyLoading.show(status: 'Carregando...');
                  },
                ),
                const SizedBox(width: 10,),
                ElevatedButton(
                  child: const Text('Parar'),
                  onPressed: ()  {
                    EasyLoading.dismiss();
                  },
                ),
              ],
            ),
            ElevatedButton(
              child: Text('Sucesso!'),
              onPressed: ()  {
                  EasyLoading.showSuccess('Sucesso!');
              },
            ),
            ElevatedButton(
              child: Text('Erro...'),
              onPressed: ()  {
                  EasyLoading.showError('Erro...');
              },
            ),
            ElevatedButton(
              child: Text('Toast no meio.'),
              onPressed: ()  {
                EasyLoading.instance.toastPosition = EasyLoadingToastPosition.center;
                EasyLoading.showToast('Eu sou um toast!');
              },
            ),
            ElevatedButton(
              child: Text('Toast embaixo.'),
              onPressed: ()  {
                EasyLoading.instance.toastPosition = EasyLoadingToastPosition.bottom;
                EasyLoading.showToast('Eu sou um toast!');
              },
            ),
          ],
        ),
      ),
    );
  }
}