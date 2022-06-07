import 'package:flutter_modular/flutter_modular.dart';
import 'package:fteam_desafio_1/src/adoption/adoption_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/', module: AdoptionModule()),
      ];
}
