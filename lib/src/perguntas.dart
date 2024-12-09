import 'package:flutter/material.dart';
import 'package:simulados_detran_web/src/widget/text_input.dart';

class Perguntas extends StatefulWidget {
  const Perguntas({super.key});

  @override
  State<Perguntas> createState() => _PerguntasState();
}

class _PerguntasState extends State<Perguntas> {
  final String body = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Simulados Detran',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: ListView(
            children: const [
              TextInput(
                textLabel: 'Cabeçalho das questões:',
              ),
              SizedBox(
                height: 10,
              ),
              TextInput(
                textLabel: 'A) Primeira alternativa',
              ),
              SizedBox(
                height: 4,
              ),
              TextInput(
                textLabel: 'B) Segunda Alternativa',
              ),
              SizedBox(
                height: 4,
              ),
              TextInput(
                textLabel: 'C) Terceira Alternativa',
              ),
              SizedBox(
                height: 4,
              ),
              TextInput(
                textLabel: 'D) Quarta Alternativa',
              ),
              SizedBox(
                height: 4,
              ),
            ],
          )),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            _confirmDialog(context);
          },
          backgroundColor: Colors.white,
          label: const Text(
            'Enviar questão!',
            style: TextStyle(color: Color(0xFF1E1D26), fontSize: 16),
          )),
    );
  }

  Future<void> _confirmDialog(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Tem certeza que deseja enviar essa pergunta?'),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Cancelar'),
              onPressed: () {},
            ),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Confirmar'),
              onPressed: () {},
            ),
          ],
        );
      },
    );
  }
}
