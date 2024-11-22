// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:nylo_framework/nylo_framework.dart';
import 'package:flutter_html/flutter_html.dart';

class TracaoPage extends StatelessWidget {
  static RouteView path = ("/6", (_) => TracaoPage());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tração em Mecânica dos Sólidos'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildContentCard(
              context,
              subtitulo: '',
              texto: '''
<section class="conteudo-tracao" style="font-family: Arial, sans-serif; line-height: 1.6; margin: 2em auto;">
  <header>
    <h1 style="color: #0072e7; text-align: center;">Tração em Mecânica dos Sólidos</h1>
  </header>
  <article>
    <h2 style="color: #0072e7;text-align: center;">Conceito</h2>
    <p style="margin: 1em 0;">Tração é um dos estados de tensão em um material, caracterizado pela aplicação de forças que atuam para alongar ou esticar o corpo. Esse tipo de carregamento é encontrado em elementos estruturais como barras, cabos e vigas, submetidos a forças externas atuando em direções opostas, afastando-se uma da outra.</p>
    <p style="margin: 1em 0;">Um exemplo clássico de tração ocorre em um cabo puxado por ambas as extremidades.</p>
  </article>
  <article>
    <h2 style="color: #0072e7;text-align: center;">Tensão Normal (σ)</h2>
    <p style="margin: 1em 0;">A <strong>tensão normal</strong> é a medida da força por unidade de área que atua perpendicularmente a uma seção transversal do corpo. É calculada como:</p>
    <p style="margin: 1em 0;"> <code style="background: #f4f4f4; padding: 0.2em 0.4em; border-radius: 4px; font-family: Consolas, Courier New, monospace;">σ = F / A</code></p>
    <ul style="margin: 1em 0; padding-left: 1.5em;">
      <li><strong>σ:</strong> Tensão normal (Pa ou N/m²)</li>
      <li><strong>F:</strong> Força normal aplicada (N)</li>
      <li><strong>A:</strong> Área da seção transversal (m²)</li>
    </ul>
    <p style="margin: 1em 0;"><strong>Unidades Comuns:</strong> Pa (Pascal), MPa (Megapascal)</p>
  </article>
  <article>
    <h2 style="color: #0072e7;text-align: center;">Deformação Axial (ε)</h2>
    <p style="margin: 1em 0;"> A <strong>deformação axial</strong> (ε) é a razão entre o alongamento (variação no comprimento) e o comprimento inicial do corpo:</p>
    <p style="margin: 1em 0;"><code style="background: #f4f4f4; padding: 0.2em 0.4em; border-radius: 4px; font-family: Consolas, Courier New, monospace;">ε = ΔL / L₀</code></p>
    <ul style="margin: 1em 0; padding-left: 1.5em;">
      <li><strong>ε:</strong> Deformação (adimensional ou expressa em porcentagem)</li>
      <li><strong>ΔL:</strong> Variação do comprimento (m)</li>
      <li><strong>L₀:</strong> Comprimento inicial do corpo (m)</li>
    </ul>
  </article>
  <article>
    <h2 style="color: #0072e7;text-align: center;">Lei de Hooke</h2>
    <p style="margin: 1em 0;">Para materiais lineares e elásticos, a tensão e a deformação estão relacionadas pela <strong>Lei de Hooke</strong>: </p>
    <p style="margin: 1em 0;"><code style="background: #f4f4f4; padding: 0.2em 0.4em; border-radius: 4px; font-family: Consolas, Courier New, monospace;">σ = E · ε</code></p>
    <ul style="margin: 1em 0; padding-left: 1.5em;">
      <li><strong>E:</strong> Módulo de elasticidade (Pa ou N/m²)</li>
    </ul>
    <p style="margin: 1em 0;">Essa relação é válida enquanto o material estiver no regime elástico.</p>
  </article>
  <article>
    <h2 style="color: #0072e7;text-align: center;">Exemplo de Cálculo</h2>
    <h3 style="color: #0072e7;text-align: center;">Problema</h3>
    <p style="margin: 1em 0;">Uma barra de aço com seção transversal circular de diâmetro 20 mm e comprimento inicial L₀ = 2 m é submetida a uma força de tração F = 30 kN. O módulo de elasticidade do aço é E = 200 GPa. Determine:</p>
    <ol style="margin: 1em 0; padding-left: 1.5em;">
      <li>A tensão normal (σ) na barra.</li>
      <li>A deformação (ε) na barra.</li>
      <li>O alongamento (ΔL) da barra.</li>
    </ol>
    <h3>Solução</h3>
    <h4>1. Cálculo da área da seção transversal (A):</h4>
    <p style="margin: 1em 0;">A seção é circular, então a área é dada por: <code>A = π · (d / 2)²</code></p>
    <p style="margin: 1em 0;">Substituindo <code>d = 20 mm = 0,02 m</code>:</p>
    <p style="margin: 1em 0;"><code style="background: #f4f4f4; padding: 0.2em 0.4em; border-radius: 4px; font-family: Consolas, Courier New, monospace;">A ≈ 3,14 × 10⁻⁴ m²</code></p>
    <h4>2. Cálculo da tensão normal (σ):</h4>
    <p style="margin: 1em 0;"><code style="background: #f4f4f4; padding: 0.2em 0.4em; border-radius: 4px; font-family: Consolas, Courier New, monospace;">σ = F / A</code></p>
    <p style="margin: 1em 0;">Substituindo <code>F = 30 kN = 30 × 10³ N</code> e <code>A = 3,14 × 10⁻⁴ m²</code>:</p>
    <p style="margin: 1em 0;"><code style="background: #f4f4f4; padding: 0.2em 0.4em; border-radius: 4px; font-family: Consolas, Courier New, monospace;">σ ≈ 95,54 MPa</code></p>
    <h4>3. Cálculo da deformação (ε):</h4>
    <p style="margin: 1em 0;">Pela Lei de Hooke: <code style="background: #f4f4f4; padding: 0.2em 0.4em; border-radius: 4px; font-family: Consolas, Courier New, monospace;">ε = σ / E</code></p>
    <p style="margin: 1em 0;">Substituindo <code style="background: #f4f4f4; padding: 0.2em 0.4em; border-radius: 4px; font-family: Consolas, Courier New, monospace;">σ = 95,54 × 10⁶ Pa</code> e <code style="background: #f4f4f4; padding: 0.2em 0.4em; border-radius: 4px; font-family: Consolas, Courier New, monospace;">E = 200 × 10⁹ Pa</code>:</p>
    <p style="margin: 1em 0;"><code style="background: #f4f4f4; padding: 0.2em 0.4em; border-radius: 4px; font-family: Consolas, Courier New, monospace;">ε ≈ 4,78 × 10⁻⁴</code></p>
    <h4>4. Cálculo do alongamento (ΔL):</h4>
    <p style="margin: 1em 0;"><code style="background: #f4f4f4; padding: 0.2em 0.4em; border-radius: 4px; font-family: Consolas, Courier New, monospace;">ε = ΔL / L₀</code> → <code style="background: #f4f4f4; padding: 0.2em 0.4em; border-radius: 4px; font-family: Consolas, Courier New, monospace;">ΔL = ε · L₀</code></p>
    <p style="margin: 1em 0;">Substituindo <code style="background: #f4f4f4; padding: 0.2em 0.4em; border-radius: 4px; font-family: Consolas, Courier New, monospace;">ε = 4,78 × 10⁻⁴</code> e <code style="background: #f4f4f4; padding: 0.2em 0.4em; border-radius: 4px; font-family: Consolas, Courier New, monospace;">L₀ = 2 m</code>:</p>
    <p style="margin: 1em 0;"><code style="background: #f4f4f4; padding: 0.2em 0.4em; border-radius: 4px; font-family: Consolas, Courier New, monospace;">ΔL ≈ 0,96 mm</code></p>
    <h3 style="color: #0072e7;text-align: center;">Resultados</h3>
    <ul style="margin: 1em 0; padding-left: 1.5em;">
      <li><strong>Tensão normal (σ):</strong> 95,54 MPa</li>
      <li><strong>Deformação (ε):</strong> 4,78 × 10⁻⁴</li>
            <li><strong>Alongamento (ΔL):</strong> 0,96 mm</li>
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
                // child: TextButton(
                //   onPressed: () async {
                //     final url = urlFile;
                //     if (await canLaunch(url)) {
                //       await launch(url);
                //     } else {
                //       throw 'Could not launch $url';
                //     }
                //   },
                //   child: Text('Ver arquivo PDF'),
                // ),
              ),
          ],
        ),
      ),
    );
  }
}
