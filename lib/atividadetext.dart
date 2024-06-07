import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:projeto/segundap.dart';

class atividadetext extends StatefulWidget {
  const atividadetext({super.key});

  @override
  State<atividadetext> createState() => _atividadetextState();
}

class _atividadetextState extends State<atividadetext> {
  var texto = "Centralizado";
  @override
  Widget build(BuildContext context) {
    var estiloTexto =
        const TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text("página pricipal"),
      ),
      drawer: SafeArea(
        child: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  child: Icon(Icons.person_2),
                ),
                accountName: Text(
                  'Malinski',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                accountEmail: Text('guitchucoveio@gmail.com'),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://i.pinimg.com/736x/26/7d/b6/267db6925e9c72e7e43c4daa004e14cc.jpg"),
                      fit: BoxFit.fill),
                ),
              ),
              ListTile(
                title: const Text('Filme de Torror'),
                subtitle: const Text('OPA!!!'),
                leading: Icon(Icons.add_card),
                trailing: Icon(Icons.add_alarm),
              ),
              Divider(
                height: 15,
                thickness: 2,
              ),
              ListTile(
                title: const Text('amanha é noisss'),
                subtitle: const Text('é nois de novo'),
                leading: Icon(Icons.star_half),
                trailing: Icon(Icons.offline_bolt),
              ),
              ListTile(
                title: const Text('Linguagens'),
                subtitle: const Text('Ohhhh maa gaaaa'),
                leading: Icon(Icons.javascript),
                trailing: Icon(Icons.css),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const segundap();
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("", style: estiloTexto),
          Text("", style: estiloTexto),
          Text("", style: estiloTexto),
          Text("", style: estiloTexto),
          Text("", style: estiloTexto),
          const SizedBox(
            height: 32,
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Search:',
            ),
          ),
          DefaultTextStyle(
            style: const TextStyle(
              fontSize: 20.0,
              color: Colors.black,
            ),
            child: AnimatedTextKit(
              animatedTexts: [
                WavyAnimatedText('Hello World'),
                WavyAnimatedText('Look at the waves'),
              ],
              isRepeatingAnimation: true,
              onTap: () {
                print("Tap Event");
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                width: 16,
              ),
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    texto = "não";
                  });
                },
                child: Icon(Icons.rocket),
              ),
              const SizedBox(
                width: 16,
              ),
              const SizedBox(
                width: 16,
              ),
              const SizedBox(
                width: 16,
              ),
            ],
          ),
          Expanded(
            child: Center(
              child: Text("", style: estiloTexto),
            ),
          )
        ],
      ),
    );
  }
}
