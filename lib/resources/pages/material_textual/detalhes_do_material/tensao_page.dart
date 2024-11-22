// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:nylo_framework/nylo_framework.dart';
import 'package:url_launcher/url_launcher.dart';

class TensaoPage extends StatelessWidget {
  static RouteView path = ("/5", (_) => TensaoPage());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Propriedade dos Materiais'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildContentCard(
              context,
              subtitulo: 'Propriedade dos Materiais',
              texto: '''
                O ensaio de tração é um dos testes mais comuns e fundamentais na Mecânica dos Sólidos para entender como um material se comporta quando submetido a uma carga de tração. Este ensaio mede a relação entre a força aplicada (tração) e a deformação resultante no material. Essa relação é graficamente representada em um gráfico tensão-deformação (também chamado de gráfico de curva de tração).
                
                σ = Tensão
                σLTR ou σr = Tensão Limite de Resistência
                σe = Tensão de escoamento
                σrup = Tensão de ruptura
                ε = Deformação / Módulo de Elasticidade
                εe = Deformação na tensão de escoamento
              ''',
              img:
                  'fabricadoprojeto_curva_tensao_deformacao_ensaio_tracao_tipico_aco.jpg',
              img2: 'tensaoxdeformacao.png',
              urlFile: 'public/Ensaio_de_Tensão_X_Deformação.pdf',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContentCard(BuildContext context,
      {required String subtitulo,
      required String texto,
      String img = '',
      String img2 = '',
      String urlFile = ''}) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              subtitulo,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              texto,
              style: TextStyle(fontSize: 16, height: 1.6),
            ),
            if (img.isNotEmpty)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Image.asset(
                  getImageAsset(img),
                  fit: BoxFit.fill,
                ),
              ),
            if (img2.isNotEmpty)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Image.asset(
                  getImageAsset(img2),
                  fit: BoxFit.fill,
                ),
              ),
            if (urlFile.isNotEmpty)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: TextButton(
                  onPressed: () async {
                    final url = urlFile;
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: Text('Ver arquivo PDF'),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
