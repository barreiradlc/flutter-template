import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:template_app/providers/theme_provider.dart';

class ThemeSwitch extends StatelessWidget {
  const ThemeSwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    return Switch.adaptive(
        value: themeProvider.isDarkTheme,
        onChanged: (value) {
          ThemeProvider theme =
              Provider.of<ThemeProvider>(context, listen: false);
          theme.toggleTheme(value);
        });
  }
}
