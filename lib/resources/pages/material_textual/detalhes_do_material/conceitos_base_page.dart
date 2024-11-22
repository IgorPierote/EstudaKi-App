import 'package:flutter/material.dart';
import 'package:nylo_framework/nylo_framework.dart';

class ConceitosBasePage extends StatelessWidget {
  static RouteView path = ("/1", (_) => ConceitosBasePage());

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
              subtitulo: 'Qual o fundamento base de Mecânica dos sólidos?',
              texto: '''
                Um está ligado ao outro direta e inderetamente.
                O equilíbrio entre os 3 é fundamental, conhecer os 3 é fundamental.
                O princípio da ligação dos 3 é gastar menos, tornar confiável e criar modelos de teste mais próximos, com mais testes ou projeções.
              ''',
              img: 'img_1.png',
            ),
            _buildContentCard(
              context,
              subtitulo: 'Revisão Ciência dos Materiais',
              texto: '''
                O átomo é a menor partícula de um elemento químico, sendo divisível.
                É o que define um elemento químico, é o número de prótons <-> número atômico(z).
                Ex: Hidrogênio -> z=1
                Obs.: quando tem uma carga positiva de saída é chamado de cátion e quando tem facilidade de receber carga negativa e tem saldo carga negativa são chamados de Ânion.
              ''',
              img2: 'isotopos-hidrogenio.jpg',
              urlFile:
                  'public/images/material_textual/Mecânica_dos_Sólidos_conceitobase.pdf',
            ),
            _buildContentCard(
              context,
              subtitulo: 'Ligações Químicas',
              texto: '''
                As ligações químicas ocorrem pela interação entre átomos, permitindo que eles atinjam uma configuração eletrônica mais estável. Existem três tipos principais de ligações: covalente, iônica e metálica.
                1 => Ligação Covalente:
                *Ocorre quando dois átomos compartilham pares de elétrons para alcançar estabilidade.
                Comum entre elementos não metálicos.
                Os elétrons compartilhados permanecem entre os átomos envolvidos, formando uma ligação relativamente forte.
                Pode ser simples (um par de elétrons compartilhado), dupla (dois pares de elétrons) ou tripla (três pares de elétrons).
                2 => Ligação Iônica:
                Forma-se entre um átomo eletropositivo (que tende a perder elétrons, geralmente um metal) e um eletronegativo (que tende a ganhar elétrons, geralmente um não-metal).
                A transferência completa de elétrons resulta em íons de cargas opostas que se atraem fortemente, formando uma ligação eletrostática.
                Essa ligação é geralmente forte e resulta em compostos com elevados pontos de fusão e ebulição, como os sais.
                3 => Ligação Metálica
                Ocorre entre átomos de metais, onde os elétrons das camadas externas estão livres para se mover pelo metal.
                Os átomos de metal compartilham uma “nuvem de elétrons”, resultando em propriedades como condutividade elétrica e maleabilidade.
                A estrutura metálica permite que os elétrons circulem livremente, o que também facilita a condutividade térmica.
              ''',
            ),
            _buildContentCard(
              context,
              subtitulo: 'Características dos Elementos e Ligações',
              texto: '''
                Elementos à Esquerda da Tabela Periódica (Metais):
                *Tendem a perder elétrons, caracterizando-se pela eletropositividade.
                Exemplos: sódio (Na), potássio (K), cálcio (Ca).
                Elementos à Direita da Tabela Periódica (Não-Metais):
                Tendem a ganhar elétrons, caracterizando-se pela eletronegatividade.
                Exemplos: oxigênio (O), flúor (F), cloro (Cl).
                Essas características influenciam diretamente o tipo de ligação que os elementos formarão.
              ''',
            ),
            _buildContentCard(
              context,
              subtitulo: 'Mas afinal o que são materiais?',
              texto: '''
                De uma maneira bem simples, os materiais são uma combinação de átomos. Estes átomos, são basicamente os ingredientes dos materiais.
                Cada tipo de material tem propriedades mecânicas específicas que determinam como ele reage a diferentes cargas e condições.
                A seleção do material certo é crucial para garantir que um componente seja seguro, durável e eficiente para a sua aplicação.
              ''',
              urlFile:
                  'public/images/material_textual/Mecânica_dos_Sólidos_conceitobase.pdf',
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
