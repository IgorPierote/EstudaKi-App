import 'package:flutter/material.dart';
import 'package:flutter_app/resources/pages/exercicios/exercicio_15_page.dart';
import 'package:flutter_app/resources/pages/exercicios/exercicio_16_page.dart';
import 'package:nylo_framework/nylo_framework.dart';

class ExerciciosPage extends StatelessWidget {
  static RouteView path = ("/exercicios", (_) => ExerciciosPage());

  final Map<String, List<Exercicio>> blocosDeExercicios = {
    "M1-B1": [
      Exercicio(
        id: 1,
        pergunta:
            "O que é o experimento de Rutherford. Qual propriedade importante dos átomos este experimento foi capaz de descrever?",
        opcoes: [
          "O experimento de Rutherford demonstrou que o átomo possui um núcleo pequeno e denso, onde está concentrada quase toda sua massa e carga positiva, com os elétrons orbitando ao redor. Isso revelou que os átomos são, na maior parte, espaço vazio.",
          "O experimento de Rutherford mostrou que o átomo é uma esfera sólida, com prótons e elétrons uniformemente distribuídos.",
          "Rutherford concluiu que os átomos são completamente sólidos e não possuem nenhuma estrutura interna.",
          "O experimento provou que os elétrons estão no centro do átomo, enquanto os prótons orbitam ao redor."
        ],
        respostaCorreta: 0,
        dica:
            "A alternativa A é a correta porque descreve precisamente as descobertas do experimento de Rutherford...",
      ),
      Exercicio(
        id: 2,
        pergunta:
            "O que são átomos eletropositivos e eletronegativos, e como essas propriedades se relacionam com as ligações atômicas?",
        opcoes: [
          "Átomos eletropositivos tendem a perder elétrons e formar ligações covalentes, enquanto átomos eletronegativos tendem a ganhar elétrons e formar ligações metálicas.",
          "Átomos eletropositivos compartilham elétrons em todas as ligações, enquanto átomos eletronegativos sempre formam ligações iônicas.",
          "Átomos eletropositivos tendem a perder elétrons e formar ligações iônicas, enquanto átomos eletronegativos tendem a ganhar elétrons e se ligar ionicamente a elementos eletropositivos.",
          "Átomos eletropositivos e eletronegativos são aqueles que têm o mesmo número de prótons e elétrons, formando ligações metálicas entre si."
        ],
        respostaCorreta: 2,
        dica:
            "A alternativa C é a correta porque define corretamente os conceitos de átomos eletropositivos e eletronegativos...",
      ),
      Exercicio(
        id: 3,
        pergunta:
            "Por qual razão consideramos os átomos como um modelo de esferas rígidas na Mecânica dos Sólidos?",
        opcoes: [
          "Porque os átomos não se movem e permanecem sempre na mesma posição, como esferas imóveis e fixas.",
          "Porque essa abordagem simplifica o estudo das interações atômicas, assumindo que os átomos têm tamanho e forma definidos, facilitando o entendimento das forças e deformações nos materiais sólidos.",
          "Porque os átomos são completamente sólidos e inquebráveis, com estrutura rígida e forma imutável.",
          "Porque as esferas rígidas representam a alta compressibilidade dos átomos, permitindo-lhes se deformar facilmente sob forças externas."
        ],
        respostaCorreta: 1,
        dica:
            "A alternativa B é a correta porque, na Mecânica dos Sólidos, representar os átomos como esferas rígidas simplifica a análise...",
      ),
      Exercicio(
        id: 4,
        pergunta:
            "Relacione as classes de materiais (Metais, Polímeros e Cerâmicas) com os tipos de ligações atômicas presentes nesses materiais.",
        opcoes: [
          "Metais têm ligações covalentes, polímeros têm ligações metálicas, e cerâmicas têm ligações iônicas e covalentes.",
          "Metais possuem ligações metálicas, polímeros apresentam ligações covalentes e forças de van der Waals, enquanto cerâmicas têm ligações iônicas e covalentes.",
          "Metais possuem ligações iônicas, polímeros têm ligações metálicas, e cerâmicas têm ligações covalentes apenas.",
          "Metais, polímeros e cerâmicas têm apenas ligações covalentes entre seus átomos."
        ],
        respostaCorreta: 1,
        dica:
            "A alternativa B é a correta porque cada classe de material tem tipos de ligações específicos...",
      ),
    ],
    "M1-B2": [
      Exercicio(
        id: 5,
        pergunta: "Qual é o efeito da tensão mecânica em um material?",
        opcoes: [
          "A tensão mecânica sempre aumenta a temperatura do material, fazendo com que ele se expanda.",
          "A tensão mecânica pode causar deformações temporárias ou permanentes no material, dependendo da sua intensidade.",
          "A tensão mecânica não afeta as propriedades do material, apenas altera sua cor.",
          "A tensão mecânica faz com que os materiais se tornem mais condutores de eletricidade."
        ],
        respostaCorreta: 1,
        dica:
            "A alternativa B é a correta porque a tensão mecânica pode causar deformações no material...",
      ),
      Exercicio(
        id: 6,
        pergunta:
            "Em relação à tensão mecânica, o que é o limite de escoamento de um material?",
        opcoes: [
          "É a quantidade máxima de tensão que um material pode suportar sem se quebrar ou fraturar.",
          "É a quantidade de força necessária para transformar o material em um líquido.",
          "É a máxima quantidade de tensão que um material pode suportar sem sofrer deformação permanente.",
          "É a quantidade de pressão que um material pode suportar antes de perder sua rigidez."
        ],
        respostaCorreta: 2,
        dica:
            "A alternativa C é a correta porque o limite de escoamento é a máxima tensão que um material pode suportar...",
      ),
      Exercicio(
        id: 7,
        pergunta: "O que caracteriza a tração mecânica em um material?",
        opcoes: [
          "A tração mecânica é a capacidade de um material de resistir à compressão sem sofrer deformação.",
          "A tração mecânica refere-se à força que estica ou alonga um material, causando a deformação em sua estrutura.",
          "A tração mecânica é a resistência de um material à fratura devido a impactos rápidos.",
          "A tração mecânica envolve a resistência de um material ao calor e à mudança de temperatura."
        ],
        respostaCorreta: 1,
        dica:
            "A alternativa B é a correta porque a tração mecânica ocorre quando uma força alongadora é aplicada a um material...",
      ),
      Exercicio(
        id: 8,
        pergunta:
            "O que acontece com um material quando ele atinge seu limite de tração?",
        opcoes: [
          "O material se deforma elasticamente e retorna à sua forma original.",
          "O material começa a se comportar de forma plástica, sofrendo deformações permanentes.",
          "O material se torna mais forte e resistente à tração.",
          "O material se transforma completamente em um líquido devido à alta tração."
        ],
        respostaCorreta: 1,
        dica:
            "A alternativa B é a correta porque o limite de tração é a máxima quantidade de força que pode ser aplicada a um material...",
      ),
    ],
    "M2-B1": [
      Exercicio(
        id: 9,
        pergunta: "O que caracteriza a compressão mecânica em um material?",
        opcoes: [
          "A compressão mecânica ocorre quando o material é esticado até o ponto de ruptura.",
          "A compressão mecânica acontece quando o material é dobrado repetidamente até fraturar.",
          "A compressão mecânica permite que o material resista ao calor intenso sem deformações.",
          "A compressão mecânica é a aplicação de uma força que reduz o volume ou encurta o material, aproximando suas partículas."
        ],
        respostaCorreta: 3,
        dica:
            "A alternativa D é a correta porque a compressão mecânica envolve uma força que reduz o comprimento ou volume de um material...",
      ),
      Exercicio(
        id: 10,
        pergunta:
            "O que ocorre quando um material atinge seu limite de compressão?",
        opcoes: [
          "O material se expande e aumenta de volume.",
          "O material retorna à sua forma original após a remoção da carga compressiva.",
          "O material começa a se deformar permanentemente ou pode se romper, dependendo de sua resistência.",
          "O material aumenta sua condutividade elétrica."
        ],
        respostaCorreta: 2,
        dica:
            "A alternativa C é a correta porque, ao atingir seu limite de compressão, o material pode sofrer deformações permanentes...",
      ),
      Exercicio(
        id: 11,
        pergunta: "O que é a tensão de cisalhamento em um material?",
        opcoes: [
          "É a força que alonga o material em sua direção longitudinal.",
          "É a tensão que atua em planos paralelos dentro de um material, tendendo a deslizar suas partes umas sobre as outras.",
          "É a força que comprime o material, reduzindo seu volume.",
          "É a tensão que causa expansão térmica no material."
        ],
        respostaCorreta: 1,
        dica:
            "A alternativa B é a correta porque a tensão de cisalhamento atua em planos paralelos no interior de um material...",
      ),
      Exercicio(
        id: 12,
        pergunta: "O que caracteriza a tensão de torção em um material?",
        opcoes: [
          "A torção ocorre quando um material é comprimido, diminuindo seu volume",
          "A torção acontece apenas em materiais elásticos, pois eles voltam à forma original.",
          "A torção é a aplicação de uma força que tende a girar ou torcer o material em torno de seu eixo.",
          "A torção é a força que alonga o material em sua direção longitudinal."
        ],
        respostaCorreta: 2,
        dica:
            "A alternativa C é a correta porque a tensão de torção envolve uma força rotacional que tende a girar ou torcer o material...",
      ),
    ],
    "M2-B2": [
      Exercicio(
        id: 13,
        pergunta: "O que é a tensão de flexão em um material?",
        opcoes: [
          "É a tensão que resulta da compressão uniforme de um material.",
          "É a tensão gerada quando um material é submetido a uma força que o curva ou dobra.",
          "É a tensão que alonga o material uniformemente em todas as direções.",
          "É a tensão que atua apenas na superfície externa do material."
        ],
        respostaCorreta: 1,
        dica:
            "A alternativa B é a correta porque a tensão de flexão ocorre quando uma força é aplicada de forma a curvar ou dobrar o material...",
      ),
      Exercicio(
        id: 14,
        pergunta:
            "O que acontece quando um material ultrapassa seu limite de flexão?",
        opcoes: [
          "O material sofre deformações permanentes ou fratura devido à combinação de tensões de tração e compressão",
          "O material retorna à sua forma original após a remoção da força de flexão.",
          "O material se expande em todas as direções para aliviar a tensão.",
          "O material se torna impermeável a líquidos devido à força aplicada."
        ],
        respostaCorreta: 0,
        dica:
            "A alternativa A é a correta porque, ao ultrapassar o limite de flexão, o material não pode mais suportar a combinação de tensões...",
      ),
    ],
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exercícios'),
      ),
      body: ListView(
        children: [
          ...blocosDeExercicios.entries.map((entry) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    entry.key,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                ...entry.value
                    .map((exercicio) => ExercicioCard(exercicio: exercicio))
                    .toList(),
                Divider(),
              ],
            );
          }).toList(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    routeTo(Exercicio15Page.path);
                  },
                  child: Text('Ir para Exercício 15'),
                ),
                SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () {
                    routeTo(Exercicio16Page.path);
                  },
                  child: Text('Ir para Exercício 16'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Exercicio {
  final int id;
  final String pergunta;
  final List<String> opcoes;
  final int respostaCorreta;
  final String dica;

  Exercicio({
    required this.id,
    required this.pergunta,
    required this.opcoes,
    required this.respostaCorreta,
    required this.dica,
  });
}

class ExercicioCard extends StatefulWidget {
  final Exercicio exercicio;

  ExercicioCard({required this.exercicio});

  @override
  _ExercicioCardState createState() => _ExercicioCardState();
}

class _ExercicioCardState extends State<ExercicioCard> {
  int? _selectedOption;
  bool _answered = false;

  void _checkAnswer() {
    setState(() {
      _answered = true;
    });

    final isCorrect = _selectedOption == widget.exercicio.respostaCorreta;
    final snackBar = SnackBar(
      content: Text(isCorrect ? 'Correto!' : 'Errado!'),
      backgroundColor: isCorrect ? Colors.green : Colors.red,
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: ExpansionTile(
        title: Text(
          'Exercício ${widget.exercicio.id}',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.exercicio.pergunta,
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 8),
                ...List.generate(widget.exercicio.opcoes.length, (index) {
                  return RadioListTile<int>(
                    title: Text(widget.exercicio.opcoes[index]),
                    value: index,
                    groupValue: _selectedOption,
                    onChanged: _answered
                        ? null
                        : (value) {
                            setState(() {
                              _selectedOption = value;
                            });
                          },
                    activeColor: _answered
                        ? (index == widget.exercicio.respostaCorreta
                            ? Colors.green
                            : Colors.red)
                        : null,
                  );
                }),
                SizedBox(height: 8),
                ElevatedButton(
                  onPressed: _answered || _selectedOption == null
                      ? null
                      : _checkAnswer,
                  child: Text('Verificar Resposta'),
                ),
                if (_answered)
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      widget.exercicio.dica,
                      style:
                          TextStyle(fontSize: 14, fontStyle: FontStyle.italic),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
