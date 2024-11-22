// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:nylo_framework/nylo_framework.dart';
import 'package:flutter_html/flutter_html.dart';

class TensaoHidrostaticaPage extends StatelessWidget {
  static RouteView path = ("/11", (_) => TensaoHidrostaticaPage());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tensão Hidrostática'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildContentCard(
              context,
              subtitulo: 'Tensão Hidrostática',
              texto: '''
<section class="conteudo-tensao-hidrostatica" style="font-family: Arial, sans-serif; line-height: 1.6; margin: 2em auto;">
  <header>
    <h1 style="color: #0072e7; text-align: center;">Tensão Hidrostática</h1>
  </header>
  <article>
    <h2 style="color: #0072e7; text-align: center;">O que é Tensão Hidrostática?</h2>
    <p style="margin: 1em 0;">A <strong>tensão hidrostática</strong> é a pressão exercida de forma isotrópica (em todas as direções) em um fluido em equilíbrio, seja ele líquido ou gasoso. Em um fluido em repouso, a pressão em qualquer ponto depende da profundidade, da densidade do fluido e da aceleração devido à gravidade.</p>
    <p style="margin: 1em 0;">Essa tensão é importante principalmente em fluidos incompressíveis (como água) e em análises de corpos submersos ou em sistemas de fluidos. A tensão hidrostática tem um papel crucial em muitos campos da engenharia, como em hidrostática, meteorologia e em projetos subaquáticos.</p>
  </article>
  <article>
    <h2 style="color: #0072e7;text-align: center;">Fórmula da Tensão Hidrostática</h2>
    <p style="margin: 1em 0;">A fórmula para calcular a tensão hidrostática em um ponto submerso em um fluido é dada por:</p>
    <p style="margin: 1em 0;"><code style="background: #f4f4f4; padding: 0.2em 0.4em; border-radius: 4px; font-family: Consolas, Courier New, monospace;">σ = ρ · g · h</code></p>
    <ul style="margin: 1em 0; padding-left: 1.5em;">
      <li><strong>σ:</strong> Tensão hidrostática (Pa ou N/m²)</li>
      <li><strong>ρ:</strong> Densidade do fluido (kg/m³)</li>
      <li><strong>g:</strong> Aceleração devido à gravidade (m/s²)</li>
      <li><strong>h:</strong> Profundidade ou altura do fluido acima do ponto considerado (m)</li>
    </ul>
    <p style="margin: 1em 0;">A equação acima expressa que a tensão hidrostática aumenta com a profundidade (h) devido ao aumento da coluna de fluido que exerce pressão sobre o ponto de interesse. A densidade (ρ) e a aceleração da gravidade (g) são constantes no sistema em análise.</p>
  </article>
  <article>
    <h2 style="color: #0072e7; text-align: center;">Exemplo de Cálculo</h2>
    <p style="margin: 1em 0;">Vamos calcular a tensão hidrostática a 10 metros de profundidade em um lago de água doce, onde a densidade da água é aproximadamente 1000 kg/m³ e a aceleração gravitacional é 9,81 m/s².</p>
    <p style="margin: 1em 0;">Substituindo os valores na fórmula:</p>
    <p style="margin: 1em 0;"><code style="background: #f4f4f4; padding: 0.2em 0.4em; border-radius: 4px; font-family: Consolas, Courier New, monospace;">σ = 1000 · 9,81 · 10 = 98.100 Pa</code></p>
    <p style="margin: 1em 0;">Portanto, a tensão hidrostática a 10 metros de profundidade é de <strong>98.100 Pa</strong> (ou 98,1 kPa).</p>
  </article>
  <article>
    <h2 style="color: #0072e7;text-align: center;">Importância da Tensão Hidrostática</h2>
    <p style="margin: 1em 0;">A tensão hidrostática é um conceito fundamental na análise de estruturas submersas e no estudo de fluidos. Ela é a base para entender o comportamento de reservatórios, submersões de embarcações, barragens e até mesmo para determinar a pressão em sistemas hidráulicos e sistemas de ventilação subaquática.</p>
    <p style="margin: 1em 0;">Exemplos práticos incluem a análise de <strong>tanques de armazenamento de líquidos</strong>, <strong>submarinos</strong>, <strong>pipelines subaquáticas</strong> e <strong>pressão em barragens</strong>. A tensão hidrostática também é importante em processos industriais, como <strong>filtros de pressão</strong>, onde se deve garantir que as estruturas suportem as pressões internas sem falhar.</p>
  </article>
  <article>
    <h2 style="color: #0072e7;text-align: center;">Conclusão</h2>
    <p style="margin: 1em 0;">Em resumo, a <strong>tensão hidrostática</strong> é a pressão exercida por um fluido em repouso devido à sua própria coluna, e é diretamente proporcional à profundidade do ponto considerado. Esse conceito é amplamente utilizado em engenharia e física para entender o comportamento de fluidos em várias situações.</p>
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
