import 'package:flutter/material.dart';

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
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Template App'),
          ),
          body: const Center(
            child: Text('Template App'),
          )),
    );
  }
}
