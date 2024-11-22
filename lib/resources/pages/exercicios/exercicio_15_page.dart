import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nylo_framework/nylo_framework.dart';

class Exercicio15Page extends StatefulWidget {
  static RouteView path = ("/ex15", (_) => Exercicio15Page());

  @override
  _ExercicioPersonalizadoPageState createState() =>
      _ExercicioPersonalizadoPageState();
}

class _ExercicioPersonalizadoPageState extends State<Exercicio15Page> {
  final TextEditingController tensaoController = TextEditingController();
  final TextEditingController segurancaController = TextEditingController();
  final TextEditingController deformacaoEscoamentoController =
      TextEditingController();
  final TextEditingController elasticidadeController = TextEditingController();
  final TextEditingController deformacaoLongitudinalController =
      TextEditingController();
  final TextEditingController deformacaoTransversalController =
      TextEditingController();
  final TextEditingController variacaoComprimentoController =
      TextEditingController();
  final TextEditingController variacaoLarguraController =
      TextEditingController();

  bool isCalculatorOpen = false;
  Map<String, bool?> resultados = {
    'tensao': null,
    'seguranca': null,
    'deformacaoEscoamento': null,
    'elasticidade': null,
    'deformacaoLongitudinal': null,
    'deformacaoTransversal': null,
    'variacaoComprimento': null,
    'variacaoLargura': null,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exercício 15'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              getImageAsset('img_exercicio15.jpg'),
              fit: BoxFit.fill,
            ),
            SizedBox(height: 16),
            Text(
                'Para o desenho acima, pede-se para calcular (CUIDADO COM OS SINAIS!!!):'),
            _buildInputField('Tensão da estrutura (σ) (3 casas)',
                tensaoController, 'tensao', '[MPa]'),
            _buildInputField('Coeficiente de Segurança (S) (2 casas)',
                segurancaController, 'seguranca', ''),
            _buildInputField(
                'Deformação na Tensão de escoamento (εe) (5 casas)',
                deformacaoEscoamentoController,
                'deformacaoEscoamento',
                ''),
            _buildInputField('Módulo de Elasticidade (E) (3 casas)',
                elasticidadeController, 'elasticidade', '[GPa]'),
            _buildInputField(
                'Deformação Longitudinal (ε) (5 casas)',
                deformacaoLongitudinalController,
                'deformacaoLongitudinal',
                '[mm/mm]'),
            _buildInputField(
                'Deformação Transversal (εt) (5 casas)',
                deformacaoTransversalController,
                'deformacaoTransversal',
                '[mm/mm]'),
            _buildInputField('Variação de Comprimento (Δl) (3 casas)',
                variacaoComprimentoController, 'variacaoComprimento', '[mm]'),
            _buildInputField('Variação de Largura (Δw) (5 casas)',
                variacaoLarguraController, 'variacaoLargura', '[mm]'),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: verificarRespostas,
              child: Text('VERIFICAR'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInputField(String label, TextEditingController controller,
      String key, String placeholder) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
          hintText: placeholder,
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

  void verificarRespostas() {
    final resultadosCalculados = calcularParametros();

    setState(() {
      resultados['tensao'] =
          tensaoController.text == resultadosCalculados['tensao'].toString();
      resultados['seguranca'] = segurancaController.text ==
          resultadosCalculados['seguranca'].toString();
      resultados['deformacaoEscoamento'] =
          deformacaoEscoamentoController.text ==
              resultadosCalculados['deformacaoEscoamento'].toString();
      resultados['elasticidade'] = elasticidadeController.text ==
          resultadosCalculados['elasticidade'].toString();
      resultados['deformacaoLongitudinal'] =
          deformacaoLongitudinalController.text ==
              resultadosCalculados['deformacaoLongitudinal'].toString();
      resultados['deformacaoTransversal'] =
          deformacaoTransversalController.text ==
              resultadosCalculados['deformacaoTransversal'].toString();
      resultados['variacaoComprimento'] = variacaoComprimentoController.text ==
          resultadosCalculados['variacaoComprimento'].toString();
      resultados['variacaoLargura'] = variacaoLarguraController.text ==
          resultadosCalculados['variacaoLargura'].toString();
    });
  }

  Map<String, double> calcularParametros() {
    const diametro_A = 115.0;
    const comprimento_B = 125.0;
    const forca_C = 200 * 1000.0;
    const tensao_escoamento = 425.0;
    const modulo_elasticidade = 200.0;
    const coeficiente_poisson = 0.31;

    final modulo_elasticidade_Pa = modulo_elasticidade * 1e9;
    final area_A =
        (3.141592653589793 / 4) * (diametro_A * 1e-3) * (diametro_A * 1e-3);
    final tensao_sigma = forca_C / area_A;
    final tensao_sigma_mpa = tensao_sigma / 1e6;
    final coeficiente_seguranca = tensao_escoamento / tensao_sigma_mpa;
    final deformacao_escoamento =
        tensao_escoamento * 1e6 / modulo_elasticidade_Pa;
    final deformacao_longitudinal = tensao_sigma / modulo_elasticidade_Pa;
    final deformacao_transversal =
        -coeficiente_poisson * deformacao_longitudinal;
    final variacao_comprimento = deformacao_longitudinal * comprimento_B;
    final variacao_largura = deformacao_transversal * (diametro_A * 1e-3);

    return {
      'tensao': double.parse(tensao_sigma_mpa.toStringAsFixed(3)),
      'seguranca': double.parse(coeficiente_seguranca.toStringAsFixed(2)),
      'deformacaoEscoamento':
          double.parse(deformacao_escoamento.toStringAsFixed(5)),
      'elasticidade': modulo_elasticidade,
      'deformacaoLongitudinal':
          double.parse(deformacao_longitudinal.toStringAsFixed(5)),
      'deformacaoTransversal':
          double.parse(deformacao_transversal.toStringAsFixed(5)),
      'variacaoComprimento':
          double.parse(variacao_comprimento.toStringAsFixed(3)),
      'variacaoLargura': double.parse(variacao_largura.toStringAsFixed(5)),
    };
  }
}
