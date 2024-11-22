// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:nylo_framework/nylo_framework.dart';
import 'package:flutter_html/flutter_html.dart';

class CompressaoPage extends StatelessWidget {
  static RouteView path = ("/7", (_) => CompressaoPage());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Compressão em Mecânica dos Sólidos'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildContentCard(
              context,
              subtitulo: 'Compressão',
              texto: '''
<section class="conteudo-compressao" style="font-family: Arial, sans-serif; line-height: 1.6; margin: 2em auto;">
  <header>
    <h1 style="color: #0072e7; text-align: center;">Compressão em Mecânica dos Sólidos</h1>
  </header>
  <article>
    <h2 style="color: #0072e7;text-align: center;">Conceito</h2>
    <p style="margin: 1em 0;">Compressão é um dos estados de tensão em um material, caracterizado pela aplicação de forças que atuam para diminuir o volume ou encurtar o corpo. Esse tipo de carregamento é encontrado em elementos estruturais como pilares, colunas e viga comprimida, submetidos a forças externas que atuam em direções opostas, pressionando-se uma contra a outra.</p>
    <p style="margin: 1em 0;">Um exemplo clássico de compressão ocorre em uma coluna de concreto sob a ação de uma carga vertical aplicada no topo.</p>
  </article>
  <article>
    <h2 style="color: #0072e7;text-align: center;">Tensão Normal (σ)</h2>
    <p style="margin: 1em 0;">A <strong>tensão normal</strong> é a medida da força por unidade de área que atua perpendicularmente a uma seção transversal do corpo. Para compressão, a fórmula é a mesma que para tração:</p>
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
    <p style="margin: 1em 0;">A <strong>deformação axial</strong> (ε) é a razão entre o encurtamento (variação no comprimento) e o comprimento inicial do corpo:</p>
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
    <p style="margin: 1em 0;">Uma coluna de concreto com seção transversal quadrada de 30 cm de lado e comprimento inicial L₀ = 5 m é submetida a uma força de compressão F = 150 kN. O módulo de elasticidade do concreto é E = 30 GPa. Determine:</p>
    <ol style="margin: 1em 0; padding-left: 1.5em;">
      <li>A tensão normal (σ) na coluna.</li>
      <li>A deformação (ε) na coluna.</li>
      <li>O encurtamento (ΔL) da coluna.</li>
    </ol>
    <h3>Solução</h3>
    <h4>1. Cálculo da área da seção transversal (A):</h4>
    <p style="margin: 1em 0;">A seção é quadrada, então a área é dada por: <code>A = L²</code></p>
    <p style="margin: 1em 0;">Substituindo <code>L = 0,3 m</code>:</p>
    <p style="margin: 1em 0;"><code style="background: #f4f4f4; padding: 0.2em 0.4em; border-radius: 4px; font-family: Consolas, Courier New, monospace;">A = 0,09 m²</code></p>
    <h4>2. Cálculo da tensão normal (σ):</h4>
    <p style="margin: 1em 0;"><code style="background: #f4f4f4; padding: 0.2em 0.4em; border-radius: 4px; font-family: Consolas, Courier New, monospace;">σ = F / A</code></p>
    <p style="margin: 1em 0;">Substituindo <code>F = 150 kN = 150 × 10³ N</code> e <code>A = 0,09 m²</code>:</p>
    <p style="margin: 1em 0;"><code style="background: #f4f4f4; padding: 0.2em 0.4em; border-radius: 4px; font-family: Consolas, Courier New, monospace;">σ ≈ 1,67 MPa</code></p>
    <h4>3. Cálculo da deformação (ε):</h4>
    <p style="margin: 1em 0;">Pela Lei de Hooke: <code style="background: #f4f4f4; padding: 0.2em 0.4em; border-radius: 4px; font-family: Consolas, Courier New, monospace;">ε = σ / E</code></p>
    <p style="margin: 1em 0;">Substituindo <code>σ = 1,67 × 10⁶ Pa</code> e <code>E = 30 × 10⁹ Pa</code>:</p>
    <p style="margin: 1em 0;"><code style="background: #f4f4f4; padding: 0.2em 0.4em; border-radius: 4px; font-family: Consolas, Courier New, monospace;">ε ≈ 5,57 × 10⁻⁵</code></p>
    <h4>4. Cálculo do encurtamento (ΔL):</h4>
    <p style="margin: 1em 0;"> <code style="background: #f4f4f4; padding: 0.2em 0.4em; border-radius: 4px; font-family: Consolas, Courier New, monospace;">ε = ΔL / L₀</code> → <code style="background: #f4f4f4; padding: 0.2em 0.4em; border-radius: 4px; font-family: Consolas, Courier New, monospace;">ΔL = ε · L₀</code></p>
    <p style="margin: 1em 0;">Substituindo <code>ε = 5,57 × 10⁻⁵</code> e <code>L₀ = 5 m</code>:</p>
    <p style="margin: 1em 0;"><code style="background: #f4f4f4; padding: 0.2em 0.4em; border-radius: 4px; font-family: Consolas, Courier New, monospace;">ΔL ≈ 2,79 mm</code></p>
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
            // if (urlFile.isNotEmpty)
            //   Padding(
            //     padding: const EdgeInsets.symmetric(vertical: 8.0),
            //     child: TextButton(
            //       onPressed: () async {
            //         final url = urlFile;
            //         if (await canLaunch(url)) {
            //           await launch(url);
            //         } else {
            //           throw 'Could not launch $url';
            //         }
            //       },
            //       child: Text('Ver arquivo PDF'),
            //     ),
            //   ),
          ],
        ),
      ),
    );
  }
}
