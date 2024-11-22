// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:nylo_framework/nylo_framework.dart';
import 'package:flutter_html/flutter_html.dart';

class CisalhamentoPage extends StatelessWidget {
  static RouteView path = ("/8", (_) => CisalhamentoPage());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cisalhamento em Mecânica dos Sólidos'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildContentCard(
              context,
              subtitulo: 'Cisalhamento',
              texto: '''
<section class="conteudo-cisalhamento" style="font-family: Arial, sans-serif; line-height: 1.6; margin: 2em auto;">
  <header>
    <h1 style="color: #0072e7; text-align: center;">Cisalhamento em Mecânica dos Sólidos</h1>
  </header>
  <article>
    <h2 style="color: #0072e7;text-align: center;">Conceito</h2>
    <p style="margin: 1em 0;">O cisalhamento é um tipo de deformação que ocorre quando forças atuam paralelamente a uma seção transversal de um corpo, causando o deslizamento de uma parte do corpo sobre outra. Esse tipo de deformação é comum em elementos estruturais como vigas e conexões soldadas, onde as forças agem tangencialmente à seção do material.</p>
    <p style="margin: 1em 0;">Um exemplo clássico de cisalhamento ocorre em uma viga submetida a uma força transversal, causando o deslocamento relativo entre as camadas do material.</p>
  </article>
  <article>
    <h2 style="color: #0072e7;text-align: center;">Tensão de Cisalhamento (τ)</h2>
    <p style="margin: 1em 0;">A <strong>tensão de cisalhamento</strong> (τ) é a força aplicada paralelamente à seção transversal, dividida pela área dessa seção:</p>
    <p style="margin: 1em 0;"> <code style="background: #f4f4f4; padding: 0.2em 0.4em; border-radius: 4px; font-family: Consolas, Courier New, monospace;">τ = F / A</code></p>
    <ul style="margin: 1em 0; padding-left: 1.5em;">
      <li><strong>τ:</strong> Tensão de cisalhamento (Pa ou N/m²)</li>
      <li><strong>F:</strong> Força de cisalhamento aplicada (N)</li>
      <li><strong>A:</strong> Área da seção transversal (m²)</li>
    </ul>
    <p style="margin: 1em 0;"><strong>Unidades Comuns:</strong> Pa (Pascal), MPa (Megapascal)</p>
  </article>
  <article>
    <h2 style="color: #0072e7;text-align: center;">Deformação de Cisalhamento (γ)</h2>
    <p style="margin: 1em 0;">A <strong>deformação de cisalhamento</strong> (γ) é a razão entre o deslocamento angular e a distância entre as camadas:</p>
    <p style="margin: 1em 0;"><code style="background: #f4f4f4; padding: 0.2em 0.4em; border-radius: 4px; font-family: Consolas, Courier New, monospace;">γ = Δx / L</code></p>
    <ul style="margin: 1em 0; padding-left: 1.5em;">
      <li><strong>γ:</strong> Deformação de cisalhamento (adimensional)</li>
      <li><strong>Δx:</strong> Deslocamento tangencial (m)</li>
      <li><strong>L:</strong> Distância entre as camadas (m)</li>
    </ul>
  </article>
  <article>
    <h2 style="color: #0072e7;text-align: center;">Lei de Hooke para Cisalhamento</h2>
    <p style="margin: 1em 0;">Para materiais elásticos, a tensão de cisalhamento e a deformação de cisalhamento estão relacionadas pela <strong>Lei de Hooke para Cisalhamento</strong>: </p>
    <p style="margin: 1em 0;"><code style="background: #f4f4f4; padding: 0.2em 0.4em; border-radius: 4px; font-family: Consolas, Courier New, monospace;">τ = G · γ</code></p>
    <ul style="margin: 1em 0; padding-left: 1.5em;">
      <li><strong>G:</strong> Módulo de cisalhamento ou módulo de rigidez (Pa ou N/m²)</li>
    </ul>
    <p style="margin: 1em 0;">Essa relação é válida enquanto o material estiver no regime elástico e o cisalhamento não causar rupturas ou grandes deformações.</p>
  </article>
  <article>
    <h2 style="color: #0072e7;text-align: center;">Exemplo de Cálculo</h2>
    <h3 style="color: #0072e7;text-align: center;">Problema</h3>
    <p style="margin: 1em 0;">Uma viga de aço com seção transversal retangular de 10 cm de largura e 20 cm de altura está sujeita a uma força de cisalhamento F = 50 kN. O módulo de cisalhamento do aço é G = 80 GPa. Determine:</p>
    <ol style="margin: 1em 0; padding-left: 1.5em;">
      <li>A tensão de cisalhamento (τ) na viga.</li>
      <li>A deformação de cisalhamento (γ) na viga.</li>
    </ol>
    <h3>Solução</h3>
    <h4>1. Cálculo da área da seção transversal (A):</h4>
    <p style="margin: 1em 0;">A seção transversal é retangular, então a área é dada por: <code>A = b · h</code></p>
    <p style="margin: 1em 0;">Substituindo <code>b = 0,1 m</code> e <code>h = 0,2 m</code>:</p>
    <p style="margin: 1em 0;"><code style="background: #f4f4f4; padding: 0.2em 0.4em; border-radius: 4px; font-family: Consolas, Courier New, monospace;">A = 0,02 m²</code> </p>
    <h4>2. Cálculo da tensão de cisalhamento (τ):</h4>
    <p style="margin: 1em 0;"><code style="background: #f4f4f4; padding: 0.2em 0.4em; border-radius: 4px; font-family: Consolas, Courier New, monospace;">τ = F / A</code></p>
    <p style="margin: 1em 0;">Substituindo <code>F = 50 kN = 50 × 10³ N</code> e <code>A = 0,02 m²</code>:</p>
    <p style="margin: 1em 0;"><code style="background: #f4f4f4; padding: 0.2em 0.4em; border-radius: 4px; font-family: Consolas, Courier New, monospace;">τ = 2,5 MPa</code></p>
    <h4>3. Cálculo da deformação de cisalhamento (γ):</h4>
    <p style="margin: 1em 0;">Pela Lei de Hooke para Cisalhamento: <code style="background: #f4f4f4; padding: 0.2em 0.4em; border-radius: 4px; font-family: Consolas, Courier New, monospace;">γ = τ / G</code></p>
    <p style="margin: 1em 0;">Substituindo <code>τ = 2,5 × 10⁶ Pa</code> e <code>G = 80 × 10⁹ Pa</code>:</p>
    <p style="margin: 1em 0;"><code style="background: #f4f4f4; padding: 0.2em 0.4em; border-radius: 4px; font-family: Consolas, Courier New, monospace;">γ = 3,125 × 10⁻⁵</code></p>
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
