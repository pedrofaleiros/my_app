import 'package:flutter_modular/flutter_modular.dart';
import 'features/auth/auth_module.dart';
import 'features/auth/presentation/view/login_page.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
    ModuleRoute('/', module: AuthModule())
      ];
}
