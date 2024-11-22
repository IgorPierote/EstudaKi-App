import 'package:flutter_app/resources/pages/exercicios/exercicio_15_page.dart';
import 'package:flutter_app/resources/pages/exercicios/exercicio_16_page.dart';
import 'package:flutter_app/resources/pages/exercicios/exercicios_page.dart';
import 'package:flutter_app/resources/pages/galeria/galeria_page.dart';
import 'package:flutter_app/resources/pages/material_textual/detalhes_do_material/bonus_page.dart';
import 'package:flutter_app/resources/pages/material_textual/detalhes_do_material/cisalhamento_page.dart';
import 'package:flutter_app/resources/pages/material_textual/detalhes_do_material/compressao_page.dart';
import 'package:flutter_app/resources/pages/material_textual/detalhes_do_material/conceitos_base_page.dart';
import 'package:flutter_app/resources/pages/material_textual/detalhes_do_material/curiosidades_page.dart';
import 'package:flutter_app/resources/pages/material_textual/detalhes_do_material/ensaios_page.dart';
import 'package:flutter_app/resources/pages/material_textual/detalhes_do_material/flexao_page.dart';
import 'package:flutter_app/resources/pages/material_textual/detalhes_do_material/polimeros_page.dart';
import 'package:flutter_app/resources/pages/material_textual/detalhes_do_material/tensao_page.dart';
import 'package:flutter_app/resources/pages/material_textual/detalhes_do_material/tensaohidroestatica_page.dart';
import 'package:flutter_app/resources/pages/material_textual/detalhes_do_material/torcao_page.dart';
import 'package:flutter_app/resources/pages/material_textual/detalhes_do_material/tracao_page.dart';
import 'package:flutter_app/resources/pages/material_textual/material_textual_page.dart';
import 'package:flutter_app/resources/pages/referencias_page.dart';

import '/resources/pages/not_found_page.dart';
import '/resources/pages/home_page.dart';
import 'package:nylo_framework/nylo_framework.dart';

/* App Router
|--------------------------------------------------------------------------
| * [Tip] Create pages faster 🚀
| Run the below in the terminal to create new a page.
| "dart run nylo_framework:main make:page profile_page"
|
| * [Tip] Add authentication 🔑
| Run the below in the terminal to add authentication to your project.
| "dart run scaffold_ui:main auth"
|
| Learn more https://nylo.dev/docs/6.x/router
|-------------------------------------------------------------------------- */

appRouter() => nyRoutes((router) {
      router.add(HomePage.path).initialRoute();
      router.add(MaterialTextualPage.path);
      router.add(ConceitosBasePage.path);
      router.add(PolimerosPage.path);
      router.add(CuriosidadesPage.path);
      router.add(EnsaiosPage.path);
      router.add(TensaoPage.path);
      router.add(ExerciciosPage.path);
      router.add(Exercicio15Page.path);
      router.add(Exercicio16Page.path);
      router.add(GaleriaPage.path);
      router.add(ReferenciasPage.path);
      router.add(TracaoPage.path);
      router.add(CompressaoPage.path);
      router.add(CisalhamentoPage.path);
      router.add(TorcaoPage.path);
      router.add(FlexaoPage.path);
      router.add(TensaoHidrostaticaPage.path);
      router.add(BonusPage.path);

      // Add your routes here ...

      // router.add(NewPage.path, transition: PageTransitionType.fade);

      // Example using grouped routes
      // router.group(() => {
      //   "route_guards": [AuthRouteGuard()],
      //   "prefix": "/dashboard"
      // }, (router) {
      //
      // });
      router.add(NotFoundPage.path).unknownRoute();
    });
