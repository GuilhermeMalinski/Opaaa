import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text("Aplicativo"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final snackBar = SnackBar(
            content: const Text('exibindo???'),
            action: SnackBarAction(
              label: 'sim',
              textColor: Colors.blue,
              onPressed: () {},
            ),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: const Icon(Icons.add),
      ),
      body: const Center(
        child: Text(
          "texto aqui",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),

        ),
      ),
    );
  }
}
