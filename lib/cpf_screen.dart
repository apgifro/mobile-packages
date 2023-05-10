import 'package:cpf_cnpj_validator/cpf_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class CPFScreen extends StatefulWidget {
  const CPFScreen({Key? key}) : super(key: key);

  @override
  State<CPFScreen> createState() => _CPFScreenState();
}

class _CPFScreenState extends State<CPFScreen> {

  final TextEditingController _cpf = TextEditingController();

  void validateCPF(String cpf) {
    bool valid = CPFValidator.isValid(cpf);
    if (valid) {
      EasyLoading.showSuccess('Sucesso!');
    } else {
      EasyLoading.showError('CPF inválido!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CPF Validator'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: _cpf,
              maxLines: 1,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                hintText: 'CPF',
                border: OutlineInputBorder()
              ),
            ),
          ),
          ElevatedButton(onPressed: () {
            validateCPF(_cpf.text);
          }, child: const Text('Verificar'))
        ],
      ),
    );
  }
}
