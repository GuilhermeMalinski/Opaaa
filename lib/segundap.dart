import 'package:flutter/material.dart';

class segundap extends StatelessWidget {
  const segundap({super.key});


  @override
  Widget build(BuildContext context) {
    var estiloTexto = const TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold

    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text("segunda página"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("",
              style: estiloTexto),
          Text("",style: estiloTexto),
          Text("",style: estiloTexto),
          Text("",style: estiloTexto),
          Text("",style: estiloTexto),
          const SizedBox(height: 32,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("você está na segunda página",style: estiloTexto),
              const SizedBox(width: 16,),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(width: 16,),
              const SizedBox(width: 16,),
              const SizedBox(width: 16,),
              const SizedBox(width: 16,),
            ],
          ),
          Expanded(
            child: Center(
              child: Text("",style: estiloTexto),
            ),
          )
        ],
      ),
    );
  }
}