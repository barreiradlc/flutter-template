import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:template_app/pages/home.dart';
import 'package:template_app/providers/theme_provider.dart';
import 'package:template_app/themes/darkTheme.dart';
import 'package:template_app/themes/lightTheme.dart';
import 'L10n/config.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const Template());
}

class Template extends StatefulWidget {
  const Template({Key? key}) : super(key: key);

  @override
  _TemplateState createState() => _TemplateState();
}

class _TemplateState extends State<Template> {
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      builder: (context, _) {
        ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
        return MaterialApp(
            themeMode: themeProvider.theme,
            theme: LightTheme().theme,
            darkTheme: DarkTheme().theme,
            supportedLocales: L10n.all,
            localizationsDelegates: [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
            ],
            home: HomePage());
      });
}
