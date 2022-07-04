import 'package:flutter_modular/flutter_modular.dart';
import 'package:my_app/src/features/auth/presentation/view/signup_page.dart';

import '../home/home_module.dart';
import 'presentation/view/login_page.dart';

class AuthModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (_, __) => LoginPage()),
        ChildRoute('/signup', child: (_, __) => SignupPage()),
        ModuleRoute('/home/', module: HomeModule())
      ];
}
