import 'package:flutter_app/resources/pages/referencias_page.dart';

import '/resources/widgets/safearea_widget.dart';
import '/app/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:nylo_framework/nylo_framework.dart';

class HomePage extends NyStatefulWidget<HomeController> {
  static RouteView path = ("/home", (_) => HomePage());

  HomePage() : super(child: () => _HomePageState());
}

class _HomePageState extends NyPage<HomePage> {
  @override
  Widget view(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EstudaKi'),
        actions: [
          IconButton(
            icon: Icon(Icons.book_rounded),
            onPressed: () {
              routeTo(ReferenciasPage.path);
            },
            tooltip: 'Alternar Tema',
          ),
        ],
        backgroundColor: Colors.blue,
      ),
      body: SafeAreaWidget(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildHeader(),
                Divider(),
                _buildAboutSection(),
                SizedBox(height: 16),
                // _buildVideoSection(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  routeTo('/materialtextual');
                },
                icon: Icon(
                  Icons.wysiwyg_outlined,
                  color: Colors.blue,
                )),
            label: 'Material Textual',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  routeTo('/exercicios');
                },
                icon: Icon(
                  Icons.quiz_outlined,
                  color: Colors.blue,
                )),
            label: 'Exercícios',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  routeTo('/galeria');
                },
                icon: Icon(
                  Icons.image_outlined,
                  color: Colors.blue,
                )),
            label: 'Galeria',
          ),
        ],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.blue,
      ),
    );
  }

  Widget _buildHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Precisa ir bem em Mecânica dos sólidos?',
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blue),
        ),
        SizedBox(height: 8),
        Text(
          'O EstudaKi vai ser seu amigo para mandar bem.',
          style: TextStyle(fontSize: 20, color: Colors.blueAccent),
        ),
      ],
    );
  }

  Widget _buildAboutSection() {
    return Card(
      elevation: 4,
      margin: EdgeInsets.symmetric(vertical: 16),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Quem somos.',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
            SizedBox(height: 8),
            Text(
              'O aplicativo StudaKi foi desenvolvido para ser um aliado indispensável aos estudantes de Mecânica dos Sólidos, facilitando o aprendizado dessa matéria essencial com uma abordagem prática e acessível. A plataforma permite que os alunos revisem conceitos, façam exercícios e se preparem para provas a qualquer momento e em qualquer lugar, eliminando as barreiras tradicionais de estudo. Com recursos interativos, como vídeos explicativos, quizzes e simulações, o StudaKi transforma o aprendizado em uma experiência dinâmica e envolvente. Além disso, ele ajuda a organizar o tempo de estudo, criando um ambiente personalizado que se adapta ao ritmo de cada aluno. Seja para reforçar o conteúdo visto em sala de aula ou para se aprofundar em tópicos específicos, o StudaKi tem o objetivo de garantir que os estudantes alcancem melhores resultados e construam uma base sólida na disciplina, preparando-os para os desafios futuros na engenharia.',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
