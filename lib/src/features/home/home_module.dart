import 'package:flutter_modular/flutter_modular.dart';
import 'package:my_app/src/features/home/presentation/view/home_page.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (_, __) => HomePage())
      ];
}