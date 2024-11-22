import 'package:flutter/material.dart';
import 'package:nylo_framework/nylo_framework.dart';

class MaterialTextualPage extends StatelessWidget {
  static RouteView path = ("/materialtextual", (_) => MaterialTextualPage());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material Textual'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildSection(
                context,
                title: 'Seção Básica',
                description:
                    'Fica Tranquilo aluno, meu nome é Marcio e estou aqui para te ajudar a aprender sobre Mecânica dos Sólidos.',
                buttons: [
                  _buildIconButton(context, 'CONCEITOS BASE', 1),
                  _buildIconButton(context, 'POLIMEROS', 2),
                  _buildIconButton(context, 'CURIOSIDADES', 3),
                  _buildIconButton(context, 'ENSAIOS', 4),
                ],
              ),
              SizedBox(height: 16),
              _buildSection(
                context,
                title: 'Seção Média',
                description:
                    'Fiquem com coração tranquilo, o conteúdo é externo mas fácil de entender.',
                buttons: [
                  _buildIconButton(context, 'TENSÃO', 5),
                  _buildIconButton(context, 'TRAÇÃO', 6),
                  _buildIconButton(context, 'COMPRESSÃO', 7),
                  _buildIconButton(context, 'CISALHAMENTO', 8),
                ],
              ),
              SizedBox(height: 16),
              _buildSection(
                context,
                title: 'Seção Difícil',
                description:
                    'Bora mandar ver na matéria, um pouco de empenho e tudo se resolve.',
                buttons: [
                  _buildIconButton(context, 'TORÇÃO', 9),
                  _buildIconButton(context, 'FLEXÃO', 10),
                  _buildIconButton(context, 'TENSÃO HIDROSTÁTICA', 11),
                  _buildIconButton(context, 'BÔNUS', 12),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSection(BuildContext context,
      {required String title,
      required String description,
      required List<Widget> buttons}) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: buttons,
            ),
            SizedBox(height: 16),
            Text(
              description,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text('Professor Dr. Marcio'),
          ],
        ),
      ),
    );
  }

  Widget _buildIconButton(BuildContext context, String label, int id) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),
      onPressed: () {
        routeTo('/' + id.toString());
      },
      child: Text(label),
    );
  }
}
