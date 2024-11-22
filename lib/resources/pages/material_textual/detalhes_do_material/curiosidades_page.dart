// ignore_for_file: deprecated_member_use

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:nylo_framework/nylo_framework.dart';
import 'package:url_launcher/url_launcher.dart';

class CuriosidadesPage extends StatelessWidget {
  static RouteView path = ("/3", (_) => CuriosidadesPage());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Curiosidades'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildRichTextContent(
              context,
              subtitulo:
                  'Aqui estão algumas curiosidades de Mecânica dos Sólidos:',
              texto: '''
                Princípio de Hooke:
                » O princípio de Hooke estabelece que a deformação de um material elástico é proporcional à força aplicada a ele, até um certo limite chamado de "limite de elasticidade". Essa relação é a base para muitos cálculos em engenharia e é expressa pela famosa equação F=kx, onde F é a força, k é a constante de rigidez e x é a deformação.
                
                Teorema de Mohr:
                » O Teorema de Mohr é uma ferramenta poderosa usada para analisar tensões e deformações em sólidos. Ele permite a visualização de tensões em diferentes orientações e é particularmente útil na engenharia civil e mecânica para entender como as estruturas reagem a cargas.
                
                Materiais Compósitos:
                » Os materiais compósitos, como fibra de carbono e fibra de vidro, combinam diferentes materiais para obter propriedades superiores. Por exemplo, a fibra de carbono é extremamente forte e leve, tornando-a ideal para aplicações aeroespaciais e automotivas.
                
                Fratura Frágil vs. Fratura Dúctil:
                » A fratura de materiais pode ser classificada em fratura frágil (que ocorre sem deformação plástica significativa) e fratura dúctil (que envolve deformação plástica antes da ruptura). Materiais metálicos geralmente exibem fratura dúctil, enquanto cerâmicas e vidro tendem a apresentar fratura frágil.
                
                Link: [Canal no Youtube interessante sobre Física](https://www.youtube.com/watch?v=OoO5d5P0Jn4)
              ''',
            ),
            _buildContentCard(
              context,
              subtitulo: 'Tensão',
              texto: '''
                Tensão é um conceito fundamental na mecânica dos sólidos e se refere à força interna que atua dentro de um material quando ele é submetido a um carregamento. Aqui estão alguns aspectos importantes sobre a tensão:
                
                Definição:
                A tensão é definida como a força aplicada por unidade de área em uma superfície. É uma medida de como as forças externas atuam sobre um material.
                
                A fórmula para calcular a tensão (σ) é:
                σ = F/A
                
                Onde:
                » σ é a tensão (em pascals, MPa)
                » F é a força aplicada (em newtons, N)
                » A é a área da seção transversal (em metros quadrados, m²)
              ''',
            ),
            _buildContentCard(
              context,
              subtitulo: 'Tenacidade',
              texto: '''
                Tenacidade é a capacidade de um material de absorver energia e deformar-se plasticamente antes de fraturar. Em outras palavras, é a medida da resistência de um material à ruptura quando ele é submetido a forças de impacto ou a cargas intensas de forma gradual. A tenacidade reflete tanto a resistência do material quanto sua ductilidade, ou seja, sua habilidade de deformar-se sem romper.
              ''',
            ),
            _buildContentCard(
              context,
              subtitulo: 'Resiliência',
              texto: '''
                Resiliência é a capacidade de um material de absorver energia ao ser deformado elasticamente e, em seguida, retornar à sua forma original quando a tensão é removida. Em termos mais simples, é uma medida da "elasticidade" do material, indicando o quanto ele consegue se deformar sob carga e depois retornar ao seu estado inicial, sem sofrer danos permanentes.
              ''',
            ),
            _buildContentCard(
              context,
              subtitulo: 'Deformação',
              texto: '''
                A deformação é a mudança na forma ou no tamanho de um material quando submetido a uma força. É medida como a razão entre a mudança de comprimento e o comprimento original do material.
              ''',
            ),
            _buildContentCard(
              context,
              subtitulo: 'Elasticidade',
              texto: '''
                Elasticidade é a capacidade de um material de retornar à sua forma original após a remoção de uma carga que o deformou. É descrita pelo módulo de elasticidade (ou módulo de Young), que mede a rigidez de um material.
              ''',
            ),
            _buildContentCard(
              context,
              subtitulo: 'Ductilidade',
              texto: '''
                A ductilidade é a capacidade de um material de se deformar plasticamente sem se romper. Materiais dúcteis, como o cobre e o aço, podem ser alongados em fios ou transformados em diferentes formas sem quebrar.
              ''',
            ),
            _buildContentCard(
              context,
              subtitulo: 'Maleabilidade',
              texto: '''
                Maleabilidade é a capacidade de um material de se deformar sob compressão, como no processo de laminação ou de ser forjado em lâminas. O ouro e o alumínio são exemplos de materiais altamente maleáveis.
              ''',
            ),
            _buildContentCard(
              context,
              subtitulo: 'Fragilidade',
              texto: '''
                Fragilidade é a tendência de um material a se romper sem deformação significativa quando submetido a uma carga. Materiais frágeis, como o vidro e a cerâmica, têm pouca capacidade de absorver deformações antes da fratura.
              ''',
            ),
            _buildContentCard(
              context,
              subtitulo: 'Dureza',
              texto: '''
                Dureza é a resistência de um material à deformação permanente, especialmente à penetração. Existem diversas escalas para medir dureza, como a escala Mohs e as escalas Brinell, Rockwell e Vickers.
              ''',
            ),
            _buildContentCard(
              context,
              subtitulo: 'Plasticidade',
              texto: '''
                Plasticidade é a capacidade de um material de se deformar permanentemente sem se romper. Materiais com alta plasticidade podem ser moldados em diferentes formas e mantêm essas formas após a remoção das cargas.
              ''',
            ),
            _buildContentCard(
              context,
              subtitulo: 'Coeficiente de Poisson',
              texto: '''
                Esse coeficiente descreve a relação entre a deformação longitudinal e a deformação transversal em um material. Quando um material é comprimido ou alongado, ele tende a se expandir ou contrair lateralmente, e o coeficiente de Poisson quantifica essa relação.
              ''',
            ),
            _buildContentCard(
              context,
              subtitulo: 'Rigidez',
              texto: '''
                Rigidez é a resistência de um material à deformação quando submetido a uma carga. Ela está relacionada ao módulo de elasticidade do material e descreve o quanto ele se deforma sob uma carga.
              ''',
            ),
            _buildContentCard(
              context,
              subtitulo: 'Fadiga',
              texto: '''
                Fadiga é a capacidade de um material de suportar cargas repetidas ou cíclicas. Com o tempo, esses ciclos podem causar pequenas rachaduras que se propagam e, eventualmente, levam à fratura do material.
              ''',
            ),
            _buildContentCard(
              context,
              subtitulo: 'Módulo de Cisalhamento',
              texto: '''
                Este módulo mede a rigidez de um material quando submetido a forças de cisalhamento, ou seja, forças que causam uma deformação angular. É crucial para avaliar o comportamento de materiais em condições de torção.
              ''',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRichTextContent(BuildContext context,
      {required String subtitulo, required String texto}) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: RichText(
          text: TextSpan(
            style: TextStyle(fontSize: 16, color: Colors.black),
            children: [
              TextSpan(
                text: '$subtitulo\n\n',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              TextSpan(
                text: 'Princípio de Hooke:\n',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text:
                    '» O princípio de Hooke estabelece que a deformação de um material elástico é proporcional à força aplicada a ele, até um certo limite chamado de "limite de elasticidade". Essa relação é a base para muitos cálculos em engenharia e é expressa pela famosa equação F=kx, onde F é a força, k é a constante de rigidez e x é a deformação.\n\n',
              ),
              TextSpan(
                text: 'Teorema de Mohr:\n',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text:
                    '» O Teorema de Mohr é uma ferramenta poderosa usada para analisar tensões e deformações em sólidos. Ele permite a visualização de tensões em diferentes orientações e é particularmente útil na engenharia civil e mecânica para entender como as estruturas reagem a cargas.\n\n',
              ),
              TextSpan(
                text: 'Materiais Compósitos:\n',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text:
                    '» Os materiais compósitos, como fibra de carbono e fibra de vidro, combinam diferentes materiais para obter propriedades superiores. Por exemplo, a fibra de carbono é extremamente forte e leve, tornando-a ideal para aplicações aeroespaciais e automotivas.\n\n',
              ),
              TextSpan(
                text: 'Fratura Frágil vs. Fratura Dúctil:\n',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text:
                    '» A fratura de materiais pode ser classificada em fratura frágil (que ocorre sem deformação plástica significativa) e fratura dúctil (que envolve deformação plástica antes da ruptura). Materiais metálicos geralmente exibem fratura dúctil, enquanto cerâmicas e vidro tendem a apresentar fratura frágil.\n\n',
              ),
              TextSpan(
                text: 'Link: ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: 'Canal no Youtube interessante sobre Física',
                style: TextStyle(color: Colors.blue),
                recognizer: TapGestureRecognizer()
                  ..onTap = () async {
                    const url = 'https://www.youtube.com/watch?v=OoO5d5P0Jn4';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
              ),
            ],
          ),
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
              style: TextStyle(fontSize: 16),
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
                  onPressed: () {
                    // Implementar lógica para abrir o arquivo PDF
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
