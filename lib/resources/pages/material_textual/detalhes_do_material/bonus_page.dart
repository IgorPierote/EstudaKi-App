// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:nylo_framework/nylo_framework.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_html/flutter_html.dart';

class BonusPage extends StatelessWidget {
  static RouteView path = ("/12", (_) => BonusPage());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tensão, Torção, Flexão e Cisalhamento'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildContentCard(
              context,
              subtitulo: 'Bonus',
              texto: '''
<section class="conteudo-bonus" style="font-family: Arial, sans-serif; line-height: 1.6; margin: 2em auto;">
  <header>
    <h1 style="color: #0072e7; text-align: center;">Tensão, Torção, Flexão e Cisalhamento</h1>
  </header>
  
  <article>
    <h2 style="color: #0072e7;text-align: center;">Conceitos Gerais</h2>
    <p style="margin: 1em 0;">Em mecânica dos sólidos, diversas forças atuam sobre os materiais, causando deformações e tensões que precisam ser compreendidas para garantir a segurança e eficiência das estruturas. Vamos analisar os quatro principais tipos de esforços e suas respectivas equações:</p>
  </article>
  
  <article>
    <h2 style="color: #0072e7;text-align: center;">1. Tensão Normal (σ)</h2>
    <p style="margin: 1em 0;">A tensão normal é uma medida da força aplicada por unidade de área em direção perpendicular à superfície de um material. Ela é um conceito fundamental para o estudo de estruturas sujeitas a tração ou compressão.</p>
    <p style="margin: 1em 0;">
      A fórmula para calcular a tensão normal é:
    </p>
    <p style="margin: 1em 0;">
      <code style="background: #f4f4f4; padding: 0.2em 0.4em; border-radius: 4px; font-family: Consolas, Courier New, monospace;">σ = F / A</code>
    </p>
    <ul style="margin: 1em 0; padding-left: 1.5em;">
      <li><strong>σ:</strong> Tensão normal (Pa ou N/m²)</li>
      <li><strong>F:</strong> Força aplicada (N)</li>
      <li><strong>A:</strong> Área da seção transversal (m²)</li>
    </ul>
  </article>
  
  <article>
    <h2 style="color: #0072e7;text-align: center;">2. Torção (τ)</h2>
    <p style="margin: 1em 0;">A torção ocorre quando um material ou elemento estrutural é submetido a um momento de torção, o que provoca um esforço de cisalhamento nas seções transversais do material.</p>
    <p style="margin: 1em 0;">
      A fórmula para calcular a tensão de torção é:
    </p>
    <p style="margin: 1em 0;">
      <code style="background: #f4f4f4; padding: 0.2em 0.4em; border-radius: 4px; font-family: Consolas, Courier New, monospace;">τ = T · r / J</code>
    </p>
    <ul style="margin: 1em 0; padding-left: 1.5em;">
      <li><strong>τ:</strong> Tensão de torção (Pa ou N/m²)</li>
      <li><strong>T:</strong> Momento de torção (N·m)</li>
      <li><strong>r:</strong> Distância do ponto mais distante do eixo de torção (m)</li>
      <li><strong>J:</strong> Momento polar de inércia da seção (m⁴)</li>
    </ul>
  </article>
  
  <article>
    <h2 style="color: #0072e7;text-align: center;">3. Flexão (σ)</h2>
    <p style="margin: 1em 0;">A flexão é a deformação de uma viga ou outro corpo quando sujeito a uma carga transversal, fazendo com que o material se curve. A tensão gerada em flexão é chamada de tensão de flexão.</p>
    <p style="margin: 1em 0;">
      A fórmula para calcular a tensão de flexão é:
    </p>
    <p style="margin: 1em 0;">
      <code style="background: #f4f4f4; padding: 0.2em 0.4em; border-radius: 4px; font-family: Consolas, Courier New, monospace;">σ = M · y / I</code>
    </p>
    <ul style="margin: 1em 0; padding-left: 1.5em;">
      <li><strong>σ:</strong> Tensão de flexão (Pa ou N/m²)</li>
      <li><strong>M:</strong> Momento fletor (N·m)</li>
      <li><strong>y:</strong> Distância da fibra mais distante do eixo neutro (m)</li>
      <li><strong>I:</strong> Momento de inércia da seção transversal (m⁴)</li>
    </ul>
  </article>

  <article>
    <h2 style="color: #0072e7;text-align: center;">4. Cisalhamento (τ)</h2>
    <p style="margin: 1em 0;">O cisalhamento ocorre quando uma força é aplicada de maneira tangencial à superfície de um material, provocando uma deformação proporcional à força e à área da seção cortada.</p>
    <p style="margin: 1em 0;">
      A fórmula para calcular a tensão de cisalhamento é:
    </p>
    <p style="margin: 1em 0;">
      <code style="background: #f4f4f4; padding: 0.2em 0.4em; border-radius: 4px; font-family: Consolas, Courier New, monospace;">τ = V · Q / (I · t)</code>
    </p>
    <ul style="margin: 1em 0; padding-left: 1.5em;">
      <li><strong>τ:</strong> Tensão de cisalhamento (Pa ou N/m²)</li>
      <li><strong>V:</strong> Força de cisalhamento aplicada (N)</li>
      <li><strong>Q:</strong> Primeira área de momento (m³)</li>
      <li><strong>I:</strong> Momento de inércia da seção transversal (m⁴)</li>
      <li><strong>t:</strong> Espessura da seção onde a força é aplicada (m)</li>
    </ul>
  </article>

  <article>
    <h2 style="color: #0072e7;text-align: center;">Comparação e Importância</h2>
    <p style="margin: 1em 0;">Cada um desses esforços (tensão normal, torção, flexão e cisalhamento) afeta os materiais de maneira diferente, e compreender suas diferenças é fundamental para o design estrutural.</p>
    <ul style="margin: 1em 0; padding-left: 1.5em;">
      <li><strong>Tensão normal:</strong> Afeta principalmente materiais em tração ou compressão.</li>
      <li><strong>Torção:</strong> Comum em eixos e cilindros sujeitos a momentos de torção.</li>
      <li><strong>Flexão:</strong> Envolvem elementos sujeitos a momentos fletores, como vigas e palhetas.</li>
      <li><strong>Cisalhamento:</strong> Provoca deformação tangencial e é comum em materiais sujeitos a forças de corte.</li>
    </ul>
  </article>
</section>
              ''',
              img: '',
              img2: '',
              urlFile:
                  '../../../../public/file/Ensaio_de_Tensão_X_Deformação.pdf',
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
            Html(
              data: texto,
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
