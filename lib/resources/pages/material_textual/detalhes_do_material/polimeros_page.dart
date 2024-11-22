import 'package:flutter/material.dart';
import 'package:nylo_framework/nylo_framework.dart';

class PolimerosPage extends StatelessWidget {
  static RouteView path = ("/2", (_) => PolimerosPage());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhes do Material'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildContentCard(
              context,
              subtitulo: 'Polímeros',
              texto: '''
                Obs.: Cada chave dentro da estrutura se chama mero, o encadeamento dessas chaves formam um polímero.
                Mero - Unidade química fundamental
                Polímero -> Classe de materiais formada por repetições contínuas de unidades químicas fundamentais (mero), as quais são em maioria orgânicas. Existem 3 subclasses: termoplásticos, elastômeros e termofixos. A diferença básica entre os três está na quantidade de ligações cruzadas, sendo que na ausência dessas somente forças intermoleculares fracas existem e o aumento destas aumenta a quantidade de ligações covalentes. Isso interfere diretamente no ponto de fusão observado.
                Materiais Metálicos:
                O mundo dos metálicos são ligações, com predominância das ligações metálicas, mas também tendo diversificadas tendências para covalentes, iônicas e secundárias.
              ''',
              img: 'piramidie_metalicos.png',
            ),
            _buildContentCard(
              context,
              subtitulo: 'Propriedade dos Sólidos',
              texto: '''
                Ponto de fusão:
                Quanto maior for a energia de ligação atômica por mol de substância, maior será o ponto de fusão.
                Condutividade elétrica:
                Está associada diretamente à liberdade dos elétrons se moverem dentro do sólido. Ligações têm esta propriedade. "E quanto maior for o caráter metálico do sólido mais condutivo ele é." Exceções se aplicam a outros tipos de sólidos que podem ter elétrons livres ex: grafite.
                Condutividade térmica:
                Definido principalmente, mas não somente pela mobilidade dos elétrons, ou seja, bons condutores de eletricidade também são bons condutores de calor.
                Resistência Mecânica:
                Está ligada diretamente com a energia de ligação atômica do material. Desta forma não é casualidade materiais de alto ponto de fusão também serem sólidos mais resistentes.
                Transparência:
                Facilidade ou não da luz visível atravessar o sólido. Materiais mais densos tendem a dificultar mais a passagem da luz do que materiais menos densos.
              ''',
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
                  getImageAsset(img),
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
