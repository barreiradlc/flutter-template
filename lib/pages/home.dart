import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:template_app/providers/theme_provider.dart';
import 'package:template_app/widgets/shared/ThemeSwitch.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    AppLocalizations? localization = AppLocalizations.of(context);
    ThemeProvider theme = Provider.of<ThemeProvider>(context);

    String mode = theme.isDarkTheme ? "Dark" : "Light";

    return Scaffold(
        appBar: AppBar(
          title: Text('Template App'),
          actions: [
            ThemeSwitch(),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                children: [
                  Icon(theme.isDarkTheme ? Icons.nightlight : Icons.sunny),
                  Text(mode),
                ],
              ),
              Container(
                height: 32,
              ),
              Text(localization!.helloWorld),
            ],
          ),
        ));
  }
}
