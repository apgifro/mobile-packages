import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pacotes'),
        actions: [
          PopupMenuButton(
              tooltip: 'Pacotes',
              onSelected: (String value) {
                Navigator.of(context).pushNamed('/$value', );
              },
              itemBuilder: (BuildContext context) {
                return const [
                  PopupMenuItem(
                      value: 'video_player',
                      child: Text('Video Player')),
                  PopupMenuItem(
                      value: 'photo_view',
                      child: Text('Photo View')),
                  PopupMenuItem(
                      value: 'animated_text',
                      child: Text('Animated Text')),
                  PopupMenuItem(
                      value: 'easy_loading',
                      child: Text('Easy Loading')),
                  PopupMenuItem(
                      value: 'email_validator',
                      child: Text('Email Validator')),
                ];
              })
        ],
      ),
      body: const Center(
        child: Text('Veja no menu os pacotes experimentados!'),
      ),
    );
  }
}
