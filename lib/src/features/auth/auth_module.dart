import 'package:flutter_modular/flutter_modular.dart';

import '../home/home_module.dart';
import 'presentation/login_page.dart';

class AuthModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (_, __) => LoginPage()),
        ModuleRoute('/home/', module: HomeModule())
      ];
}
