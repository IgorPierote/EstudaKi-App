// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:nylo_framework/nylo_framework.dart';
import 'package:flutter_html/flutter_html.dart';

class TorcaoPage extends StatelessWidget {
  static RouteView path = ("/9", (_) => TorcaoPage());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Torção em Mecânica dos Sólidos'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildContentCard(
              context,
              subtitulo: 'Torção',
              texto: '''
<section class="conteudo-torcao" style="font-family: Arial, sans-serif; line-height: 1.6; margin: 2em auto;">
  <header>
    <h1 style="color: #0072e7; text-align: center;">Torção em Mecânica dos Sólidos</h1>
  </header>
  <article>
    <h2 style="color: #0072e7;text-align: center;">Conceito</h2>
    <p style="margin: 1em 0;">A torção é um tipo de deformação que ocorre quando um material é submetido a uma força de torção, ou seja, quando um momento torçor é aplicado a uma seção transversal do material, fazendo com que ele gire em torno de seu eixo longitudinal. Esse tipo de deformação é comumente encontrado em eixos, tubos e vigas que recebem forças torsionais.</p>
    <p style="margin: 1em 0;">Em estruturas como eixos de transmissão de movimento, a torção é crucial para o funcionamento dos sistemas mecânicos, sendo importante analisar como o material se comporta sob essa força.</p>
  </article>
  <article>
    <h2 style="color: #0072e7;text-align: center;">Tensão de Torção (τ)</h2>
    <p style="margin: 1em 0;">A <strong>tensão de torção</strong> (τ) é a tensão gerada devido ao momento torçor (T) aplicado sobre uma seção transversal de um material. Ela depende do momento torçor, do raio da seção e da polar moment of inertia (J) da seção transversal:</p>
    <p style="margin: 1em 0;"><code style="background: #f4f4f4; padding: 0.2em 0.4em; border-radius: 4px; font-family: Consolas, Courier New, monospace;">τ = T · r / J</code></p>
    <ul style="margin: 1em 0; padding-left: 1.5em;">
      <li><strong>τ:</strong> Tensão de torção (Pa ou N/m²)</li>
      <li><strong>T:</strong> Momento torçor (N·m)</li>
      <li><strong>r:</strong> Raio da seção transversal (m)</li>
      <li><strong>J:</strong> Momento polar de inércia da seção transversal (m⁴)</li>
    </ul>
    <p style="margin: 1em 0;"><strong>Unidades Comuns:</strong> Pa (Pascal), MPa (Megapascal)</p>
  </article>
  <article>
    <h2 style="color: #0072e7;text-align: center;">Deformação Angular (θ)</h2>
    <p style="margin: 1em 0;">A <strong>deformação angular</strong> (θ) é o ângulo de rotação que o corpo sofre devido ao momento torçor aplicado, sendo dada por:</p>
    <p style="margin: 1em 0;"><code style="background: #f4f4f4; padding: 0.2em 0.4em; border-radius: 4px; font-family: Consolas, Courier New, monospace;">θ = T · L / (J · G)</code></p>
    <ul style="margin: 1em 0; padding-left: 1.5em;">
      <li><strong>θ:</strong> Deformação angular (radiano)</li>
      <li><strong>L:</strong> Comprimento do eixo (m)</li>
      <li><strong>G:</strong> Módulo de cisalhamento ou módulo de rigidez (Pa ou N/m²)</li>
    </ul>
  </article>
  <article>
    <h2 style="color: #0072e7;text-align: center;">Lei de Hooke para Torção</h2>
    <p style="margin: 1em 0;">Para materiais elásticos, a torção e a deformação angular estão relacionadas pela <strong>Lei de Hooke para Torção</strong>: </p>
    <p style="margin: 1em 0;"><code style="background: #f4f4f4; padding: 0.2em 0.4em; border-radius: 4px; font-family: Consolas, Courier New, monospace;">θ = T · L / (J · G)</code></p>
    <p style="margin: 1em 0;">Essa relação é válida enquanto o material estiver no regime elástico e a torção não causar falhas ou grandes deformações.</p>
  </article>
  <article>
    <h2 style="color: #0072e7;text-align: center;">Exemplo de Cálculo</h2>
    <h3 style="color: #0072e7;text-align: center;">Problema</h3>
    <p style="margin: 1em 0;">Um eixo de aço de diâmetro 50 mm e comprimento 2 m está sujeito a um momento torçor de 500 N·m. O módulo de cisalhamento do aço é G = 80 GPa. Determine:</p>
    <ol style="margin: 1em 0; padding-left: 1.5em;">
      <li>A tensão de torção (τ) no eixo.</li>
      <li>A deformação angular (θ) no eixo.</li>
    </ol>
    <h3>Solução</h3>
    <h4>1. Cálculo do momento polar de inércia (J):</h4>
    <p style="margin: 1em 0;">Para um eixo circular, o momento polar de inércia é dado por:</p>
    <p style="margin: 1em 0;"><code style="background: #f4f4f4; padding: 0.2em 0.4em; border-radius: 4px; font-family: Consolas, Courier New, monospace;">J = (π · d⁴) / 32</code></p>
    <p style="margin: 1em 0;">Substituindo <code>d = 0,05 m</code> (diâmetro do eixo):</p>
    <p style="margin: 1em 0;"><code style="background: #f4f4f4; padding: 0.2em 0.4em; border-radius: 4px; font-family: Consolas, Courier New, monospace;">J = 4,9087 × 10⁻⁶ m⁴</code></p>
    <h4>2. Cálculo da tensão de torção (τ):</h4>
    <p style="margin: 1em 0;"><code style="background: #f4f4f4; padding: 0.2em 0.4em; border-radius: 4px; font-family: Consolas, Courier New, monospace;">τ = T · r / J</code></p>
    <p style="margin: 1em 0;">Substituindo <code>T = 500 N·m</code>, <code>r = 0,025 m</code> (raio do eixo) e <code>J = 4,9087 × 10⁻⁶ m⁴</code>:</p>
    <p style="margin: 1em 0;"><code style="background: #f4f4f4; padding: 0.2em 0.4em; border-radius: 4px; font-family: Consolas, Courier New, monospace;">τ = 2,55 MPa</code></p>
    <h4>3. Cálculo da deformação angular (θ):</h4>
    <p style="margin: 1em 0;"><code style="background: #f4f4f4; padding: 0.2em 0.4em; border-radius: 4px; font-family: Consolas, Courier New, monospace;">θ = T · L / (J · G)</code></p>
    <p style="margin: 1em 0;">Substituindo <code>T = 500 N·m</code>, <code>L = 2 m</code>, <code>J = 4,9087 × 10⁻⁶ m⁴</code> e <code>G = 80 × 10⁹ Pa</code>:</p>
    <p style="margin: 1em 0;"><code style="background: #f4f4f4; padding: 0.2em 0.4em; border-radius: 4px; font-family: Consolas, Courier New, monospace;">θ = 0,000255 rad</code></p>
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
