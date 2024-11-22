import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:math';

import 'package:nylo_framework/nylo_framework.dart';

class Exercicio16Page extends StatefulWidget {
  static RouteView path = ("/ex16", (_) => Exercicio16Page());

  @override
  _Exercicio16PageState createState() => _Exercicio16PageState();
}

class _Exercicio16PageState extends State<Exercicio16Page> {
  final TextEditingController diametroController = TextEditingController();
  final TextEditingController espessuraController = TextEditingController();
  final TextEditingController distanciaController = TextEditingController();

  Map<String, bool?> resultados = {
    'diametro': null,
    'espessura': null,
    'distancia': null,
  };

  Map<String, double> valoresCorretos = {
    'diametro': 0.0,
    'espessura': 0.0,
    'distancia': 0.0,
  };

  @override
  void initState() {
    super.initState();
    calcularValoresCorretos();
  }

  void calcularValoresCorretos() {
    const forcaAplicada = 1750.0; // em N
    const coeficienteSeguranca = 3.5;
    const limiteEscoamentoParafuso = 330.0; // em MPa
    const limiteResistenciaChapa = 160.0; // em MPa

    // Cálculo do Diâmetro do Parafuso (a)
    final areaResistenteParafuso = (forcaAplicada * coeficienteSeguranca) /
        (limiteEscoamentoParafuso * 1e6);
    valoresCorretos['diametro'] =
        (sqrt((4 * areaResistenteParafuso) / pi) * 1000);

    // Cálculo da Espessura da Chapa t2 (b)
    final pressaoEsmagamento = limiteResistenciaChapa * 1e6;
    valoresCorretos['espessura'] = (forcaAplicada * coeficienteSeguranca) /
        (pressaoEsmagamento * valoresCorretos['diametro']! * 1e-3);

    // Cálculo da Distância A2 (c)
    final tensaoRasgamento = limiteResistenciaChapa * 1e6;
    valoresCorretos['distancia'] = (forcaAplicada * coeficienteSeguranca) /
            (tensaoRasgamento * valoresCorretos['espessura']! * 1e-3) +
        valoresCorretos['diametro']!;
  }

  void verificarRespostas() {
    setState(() {
      resultados['diametro'] =
          verificarValor(diametroController.text, valoresCorretos['diametro']!);
      resultados['espessura'] = verificarValor(
          espessuraController.text, valoresCorretos['espessura']!);
      resultados['distancia'] = verificarValor(
          distanciaController.text, valoresCorretos['distancia']!);
    });
  }

  bool verificarValor(String input, double valorCorreto) {
    try {
      final valor = double.parse(input.replaceAll(',', '.'));
      return (valor - valorCorreto).abs() < 0.01;
    } catch (e) {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exercício: Junta Parafusada'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              getImageAsset('img_exercicio16.jpg'),
              fit: BoxFit.fill,
            ),
            SizedBox(height: 16),
            Text('Dados de projeto:'),
            Text('Força Aplicada: 1750 N'),
            Text('Coeficiente de Segurança: 3,5'),
            SizedBox(height: 16),
            _buildInputField('a) Diâmetro do(s) parafuso(s) (mm):',
                diametroController, 'diametro'),
            _buildInputField('b) Espessura da chapa t2 (mm):',
                espessuraController, 'espessura'),
            _buildInputField(
                'c) Distância A2 (mm):', distanciaController, 'distancia'),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: verificarRespostas,
              child: Text('Verificar Respostas'),
            ),
            if (resultados['diametro'] != null) _buildResultados(),
          ],
        ),
      ),
    );
  }

  Widget _buildInputField(
      String label, TextEditingController controller, String key) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(),
          suffixIcon: resultados[key] == null
              ? null
              : Icon(
                  resultados[key]! ? Icons.check_circle : Icons.error,
                  color: resultados[key]! ? Colors.green : Colors.red,
                ),
        ),
        keyboardType: TextInputType.numberWithOptions(decimal: true),
        inputFormatters: [
          FilteringTextInputFormatter.allow(RegExp(r'^\d*\,?\d*')),
        ],
      ),
    );
  }

  Widget _buildResultados() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 16),
        Text('Resultados:',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        _buildResultadoItem('Diâmetro do(s) parafuso(s):', 'diametro'),
        _buildResultadoItem('Espessura da chapa t2:', 'espessura'),
        _buildResultadoItem('Distância A2:', 'distancia'),
      ],
    );
  }

  Widget _buildResultadoItem(String label, String key) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Text(
        '$label ${resultados[key]! ? 'Correto' : 'Incorreto'} (Correto: ${valoresCorretos[key]!.toStringAsFixed(2)} mm)',
        style: TextStyle(
          color: resultados[key]! ? Colors.green : Colors.red,
        ),
      ),
    );
  }
}
