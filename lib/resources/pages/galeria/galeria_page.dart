// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:nylo_framework/nylo_framework.dart';
import 'package:url_launcher/url_launcher.dart';

class GaleriaPage extends StatelessWidget {
  static RouteView path = ("/galeria", (_) => GaleriaPage());

  final Map<String, String> videoTitles = {
    'EjKgxPXe51g': 'Título do Vídeo 1',
    'C25yXbDwgkg': 'Título do Vídeo 2',
    '7JxUnPy45CY': 'Título do Vídeo 3',
    'EXImOcrK-kQ': 'Título do Vídeo 4',
    'ulqXtID10Zs': 'Título do Vídeo 5',
    'Z8K5AG-yN6E': 'Título do Vídeo 6',
    '5Ul7ITTUAis': 'Título do Vídeo 7',
    'YpHD81fBHD0': 'Título do Vídeo 8',
    'DoXG5dh2IPw': 'Título do Vídeo 9',
    'DIE2CMVGhP8': 'Título do Vídeo 10',
    'g2X1MtnR2jE': 'Título do Vídeo 11',
    'wHEjDJkJ7SE': 'Título do Vídeo 12',
    'HH0xigJ8C4s': 'Título do Vídeo 13',
    'X9g8VHwMlCA': 'Título do Vídeo 14',
    '429DkLlIc_0': 'Título do Vídeo 15',
    't516KmBJ0Mo': 'Título do Vídeo 16',
    'G1MvjgeABy0': 'Título do Vídeo 17',
    'SN7gFMoSGSw': 'Título do Vídeo 18',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Galeria de Vídeos'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Número de colunas
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
          ),
          itemCount: videoTitles.length,
          itemBuilder: (context, index) {
            String videoId = videoTitles.keys.elementAt(index);
            String title = videoTitles[videoId]!;
            return VideoCard(videoId: videoId, title: title);
          },
        ),
      ),
    );
  }
}

class VideoCard extends StatelessWidget {
  final String videoId;
  final String title;

  VideoCard({required this.videoId, required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _launchURL('https://www.youtube.com/watch?v=$videoId'),
      child: Card(
        elevation: 4.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Image.network(
                'https://img.youtube.com/vi/$videoId/0.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
