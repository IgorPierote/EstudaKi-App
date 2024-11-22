import 'package:flutter/material.dart';
import 'package:nylo_framework/nylo_framework.dart';

class ReferenciasPage extends StatelessWidget {
  static RouteView path = ("/referencias", (_) => ReferenciasPage());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Referências Bibliográficas'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionTitle('Entendendo a Mecânica dos Sólidos:'),
            _buildParagraph(
                'A Mecânica dos Sólidos é uma área da engenharia que estuda o comportamento de sólidos sob a ação de forças. É fundamental para o projeto de estruturas, máquinas e componentes mecânicos.'),
            _buildSectionTitle('Escolhendo o Livro Certo:'),
            _buildParagraph(
                'Ao escolher um livro de Mecânica dos Sólidos, considere os seguintes fatores:'),
            _buildBulletPoint(
                'Nível de profundidade: Se você está iniciando seus estudos, procure por livros com uma abordagem mais introdutória. Para aprofundamentos em temas específicos, busque livros mais avançados.'),
            _buildBulletPoint(
                'Temas abordados: Verifique se o livro cobre os tópicos que você precisa estudar, como tensão, deformação, flexão, torção, etc.'),
            _buildBulletPoint(
                'Estilo do autor: Alguns autores apresentam o conteúdo de forma mais teórica, enquanto outros utilizam mais exemplos práticos. Escolha um estilo que se adapte à sua forma de aprender.'),
            _buildBulletPoint(
                'Exercícios: A resolução de exercícios é fundamental para a fixação do conteúdo. Verifique se o livro possui uma boa quantidade de exercícios propostos e resolvidos.'),
            _buildSectionTitle('Sugestões de Livros:'),
            _buildSubsectionTitle('Livros Clássicos:'),
            _buildBulletPoint(
                'Timoshenko, S. P. & Gere, J. M. (1993). Mecânica de Sólidos. Vol. 1 e 2. Editora: LTC. Considerado um dos livros mais completos e detalhados sobre o assunto.'),
            _buildBulletPoint(
                'Hibbeler, R. C. (2004). Resistência de Materiais - 5ª Ed. Pearson Education. Abordagem mais prática, com muitos exemplos e aplicações.'),
            _buildSubsectionTitle('Livros Modernos:'),
            _buildBulletPoint(
                'Gere, J.M. (2003). Mecânica dos Materiais. São Paulo: Pioneira Thomson Learning. Atualização do clássico de Timoshenko e Gere, com uma abordagem mais moderna.'),
            _buildBulletPoint(
                'Ugural, Ansel C. (2009). Mecânica dos Materiais. LTC. Livro com uma boa cobertura de tópicos avançados, como análise de tensões e deformações.'),
            _buildSubsectionTitle('Livros com Foco em Aplicações:'),
            _buildBulletPoint(
                'Beer, Ferdinand P., Johnston, E. Russell, Jr., & Dewolf, John T. (2004). Resistência dos Materiais - 4ª Ed. Enfoque em aplicações práticas, com muitos exemplos de projetos de engenharia.'),
            _buildSubsectionTitle('Livros em Português:'),
            _buildBulletPoint(
                'Coda, Humberto Breve. Mecânica dos sólidos: volume I. Universidade de São Paulo. Escola de Engenharia de São Carlos, 2017. Livro disponível gratuitamente em formato digital, com uma abordagem clara e objetiva.'),
            _buildSectionTitle('Referências em Química:'),
            _buildParagraph(
                'Para uma compreensão mais aprofundada dos conceitos de química que podem ser aplicados na Mecânica dos Sólidos, considere as seguintes referências:'),
            _buildBulletPoint(
                'Brown, T. L., LeMay, H. E., Bursten, B. E., Murphy, C. J., & Woodward, P. M. - Química: A Ciência Central. Pearson. Este livro é uma das referências mais abrangentes em química e explora os tipos de ligações, suas características e a estrutura eletrônica dos átomos.'),
            _buildBulletPoint(
                'Chang, R., & Goldsby, K. - Química Geral. McGraw-Hill. Oferece uma boa introdução às ligações iônicas, covalentes e metálicas, com foco em suas propriedades e exemplos práticos.'),
            _buildBulletPoint(
                'Atkins, P., & Jones, L. - Princípios de Química: Questionando a Vida Moderna e o Meio Ambiente. Bookman. Aborda ligações químicas em profundidade, incluindo as tendências de eletronegatividade e eletropositividade na tabela periódica.'),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title,
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildSubsectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Text(
        title,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildParagraph(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Text(
        text,
        style: TextStyle(fontSize: 16),
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('• ', style: TextStyle(fontSize: 16)),
          Expanded(
            child: Text(
              text,
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
