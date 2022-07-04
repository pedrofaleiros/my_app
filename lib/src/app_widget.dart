import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:localization/localization.dart';
import 'package:my_app/src/app_theme.dart';

class AppWidget extends StatefulWidget with WidgetsBindingObserver {
  const AppWidget({Key? key}) : super(key: key);

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  var theme = AppTheme().lightTheme;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addObserver(widget);
    changeTheme();
  }

  @override
  void dispose() {
    WidgetsBinding.instance?.removeObserver(widget);
    super.dispose();
  }

   @override
  void didChangePlatformBrightness() {
    changeTheme();
  }

  changeTheme() {
    var brightness = WidgetsBinding.instance?.window.platformBrightness;
    brightness == Brightness.dark
        ? theme = AppTheme().darkTheme
        : theme = AppTheme().lightTheme;

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    LocalJsonLocalization.delegate.directories = ['lib/assets/i18n'];

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: theme,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        LocalJsonLocalization.delegate
      ],
      supportedLocales: const [
        Locale('pt', 'BR'),
        Locale('en', 'US'),
      ],
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
    );
  }
}
