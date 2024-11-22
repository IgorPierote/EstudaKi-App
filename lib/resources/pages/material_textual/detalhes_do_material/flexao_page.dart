// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:nylo_framework/nylo_framework.dart';
import 'package:flutter_html/flutter_html.dart';

class FlexaoPage extends StatelessWidget {
  static RouteView path = ("/10", (_) => FlexaoPage());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flexão em Mecânica dos Sólidos'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildContentCard(
              context,
              subtitulo: 'Flexão',
              texto: '''
<section class="conteudo-flexao" style="font-family: Arial, sans-serif; line-height: 1.6; margin: 2em auto;">
  <header>
    <h1 style="color: #0072e7; text-align: center;">Flexão em Mecânica dos Sólidos</h1>
  </header>
  <article>
    <h2 style="color: #0072e7;text-align: center;">Conceito</h2>
    <p style="margin: 1em 0;">A flexão é uma deformação que ocorre quando um corpo é submetido a uma força perpendicular à sua extensão, resultando em uma curvatura. Esse tipo de deformação é comum em vigas, palhetas e outros elementos estruturais que recebem cargas transversais.</p>
    <p style="margin: 1em 0;">A flexão é particularmente importante para estruturas de construção, como pontes e edifícios, onde as vigas e suportes devem ser projetados para resistir a essas forças e evitar falhas estruturais.</p>
  </article>
  <article>
    <h2 style="color: #0072e7;text-align: center;">Tensão de Flexão (σ)</h2>
    <p style="margin: 1em 0;">A <strong>tensão de flexão</strong> (σ) é a tensão gerada na fibra mais distante do eixo neutro de uma viga quando ela está sujeita a uma carga transversal. A fórmula para calcular a tensão de flexão é:</p>
    <p style="margin: 1em 0;"><code style="background: #f4f4f4; padding: 0.2em 0.4em; border-radius: 4px; font-family: Consolas, Courier New, monospace;">σ = M · y / I</code></p>
    <ul style="margin: 1em 0; padding-left: 1.5em;">
      <li><strong>σ:</strong> Tensão de flexão (Pa ou N/m²)</li>
      <li><strong>M:</strong> Momento fletor (N·m)</li>
      <li><strong>y:</strong> Distância da fibra mais distante do eixo neutro (m)</li>
      <li><strong>I:</strong> Momento de inércia da seção transversal (m⁴)</li>
    </ul>
    <p style="margin: 1em 0;"><strong>Unidades Comuns:</strong> Pa (Pascal), MPa (Megapascal)</p>
  </article>
  <article>
    <h2 style="color: #0072e7;text-align: center;">Curvatura e Deflexão</h2>
    <p style="margin: 1em 0;">A curvatura (κ) é a medida da quantidade de curvatura de uma viga ou corpo sob flexão, e é dada por:</p>
    <p style="margin: 1em 0;"><code style="background: #f4f4f4; padding: 0.2em 0.4em; border-radius: 4px; font-family: Consolas, Courier New, monospace;">κ = M / E · I</code></p>
    <ul style="margin: 1em 0; padding-left: 1.5em;">
      <li><strong>κ:</strong> Curvatura (1/m)</li>
      <li><strong>M:</strong> Momento fletor (N·m)</li>
      <li><strong>E:</strong> Módulo de elasticidade do material (Pa ou N/m²)</li>
      <li><strong>I:</strong> Momento de inércia da seção transversal (m⁴)</li>
    </ul>
    <p style="margin: 1em 0;">A deflexão (δ) é o deslocamento máximo que ocorre na viga devido à carga. Ela é calculada pela fórmula:</p>
    <p style="margin: 1em 0;"><code style="background: #f4f4f4; padding: 0.2em 0.4em; border-radius: 4px; font-family: Consolas, Courier New, monospace;">δ = F · L³ / (3 · E · I)</code></p>
    <ul style="margin: 1em 0; padding-left: 1.5em;">
      <li><strong>δ:</strong> Deflexão (m)</li>
      <li><strong>F:</strong> Carga aplicada (N)</li>
      <li><strong>L:</strong> Comprimento da viga (m)</li>
      <li><strong>E:</strong> Módulo de elasticidade (Pa)</li>
      <li><strong>I:</strong> Momento de inércia da seção transversal (m⁴)</li>
    </ul>
  </article>
  <article>
    <h2 style="color: #0072e7;text-align: center;">Exemplo de Cálculo</h2>
    <h3 style="color: #0072e7;text-align: center;">Problema</h3>
    <p style="margin: 1em 0;">Uma viga de aço de 3 metros de comprimento e seção retangular de 100 mm x 200 mm está sujeita a um momento fletor de 1.500 N·m. O módulo de elasticidade do aço é E = 210 GPa. Determine:</p>
    <ol style="margin: 1em 0; padding-left: 1.5em;">
      <li>A tensão de flexão máxima (σ).</li>
      <li>A deflexão máxima (δ) da viga.</li>
    </ol>
    <h3>Solução</h3>
    <h4>1. Cálculo do momento de inércia (I):</h4>
    <p style="margin: 1em 0;">Para uma seção retangular, o momento de inércia é dado por:</p>
    <p style="margin: 1em 0;"><code style="background: #f4f4f4; padding: 0.2em 0.4em; border-radius: 4px; font-family: Consolas, Courier New, monospace;">I = b · h³ / 12</code></p>
    <p style="margin: 1em 0;">Substituindo <code>b = 0,1 m</code> (base da seção) e <code>h = 0,2 m</code> (altura da seção):</p>
    <p style="margin: 1em 0;"><code style="background: #f4f4f4; padding: 0.2em 0.4em; border-radius: 4px; font-family: Consolas, Courier New, monospace;">I = 3,333 × 10⁻³ m⁴</code></p>
    <h4>2. Cálculo da tensão de flexão máxima (σ):</h4>
    <p style="margin: 1em 0;"><code style="background: #f4f4f4; padding: 0.2em 0.4em; border-radius: 4px; font-family: Consolas, Courier New, monospace;">σ = M · y / I</code></p>
    <p style="margin: 1em 0;">Substituindo <code>M = 1.500 N·m</code>, <code>y = 0,1 m</code> (distância da fibra mais distante do eixo neutro) e <code>I = 3,333 × 10⁻³ m⁴</code>:</p>
    <p style="margin: 1em 0;"><code style="background: #f4f4f4; padding: 0.2em 0.4em; border-radius: 4px; font-family: Consolas, Courier New, monospace;">σ = 45 MPa</code></p>
    <h4>3. Cálculo da deflexão máxima (δ):</h4>
    <p style="margin: 1em 0;"><code style="background: #f4f4f4; padding: 0.2em 0.4em; border-radius: 4px; font-family: Consolas, Courier New, monospace;">δ = F · L³ / (3 · E · I)</code></p>
    <p style="margin: 1em 0;">Como a carga é distribuída ao longo da viga e não aplicada em um ponto específico, essa fórmula de deflexão máxima para uma viga sujeita a carga concentrada no meio seria mais apropriada.</p>
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
          ],
        ),
      ),
    );
  }
}
