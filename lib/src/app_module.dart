import 'package:flutter_modular/flutter_modular.dart';
import 'package:fteam_desafio_1/src/adoption/presenter/pages/adoption_detail_page.dart';
import 'package:fteam_desafio_1/src/adoption/presenter/pages/adoption_page.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (ctx, args) => const AdoptionPage()),
        ChildRoute('/detail', child: (ctx, args) => const AdoptionDetailPage()),
      ];
}
