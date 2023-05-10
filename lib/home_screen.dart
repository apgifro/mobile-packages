import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Pacotes'),
        actions: [
          PopupMenuButton(
              tooltip: 'Pacotes',
              onSelected: (String value) {
                Navigator.of(context).pushNamed(
                  '/$value',
                );
              },
              itemBuilder: (BuildContext context) {
                return const [
                  PopupMenuItem(
                      value: 'video_player', child: Text('Video Player')),
                  PopupMenuItem(value: 'photo_view', child: Text('Photo View')),
                  PopupMenuItem(
                      value: 'animated_text', child: Text('Animated Text')),
                  PopupMenuItem(
                      value: 'easy_loading', child: Text('Easy Loading')),
                  PopupMenuItem(
                      value: 'email_validator', child: Text('Email Validator')),
                  PopupMenuItem(
                      value: 'cpf_validator', child: Text('CPF Validator')),
                ];
              })
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(children: [
            Image.asset('images/hello.png'),
            const Text(
              'Veja no menu os pacotes experimentados!',
              style: TextStyle(fontSize: 17),
            ),
          ]),
        ),
      ),
    );
  }
}
