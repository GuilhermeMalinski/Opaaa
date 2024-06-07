import 'package:flutter/material.dart';

class Pagina21 extends StatelessWidget {
  const Pagina21({super.key});


  @override
  Widget build(BuildContext context) {
    var estiloTexto = const TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold

    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text("Título"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("texto grande demaisssssss",
            style: estiloTexto),
          Text("outro texto",style: estiloTexto),
          Text("texto grande demaisssssss",style: estiloTexto),
          Text("outro texto",style: estiloTexto),
          Text("texto grande demaisssssss",style: estiloTexto),
         const SizedBox(height: 32,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("texto",style: estiloTexto),
              const SizedBox(width: 16,),
              Text("texto2",style: estiloTexto),
              const SizedBox(width: 16,),
              const Icon(Icons.radio),
              const SizedBox(width: 16,),
              Text("texto4",style: estiloTexto),
              const SizedBox(width: 16,),
              Text("texto5",style: estiloTexto),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FilledButton(
                onPressed: () {},
                child: const Text('Enabled'),
              ),
              const SizedBox(width: 16,),
              OutlinedButton(
              onPressed: () {},
              child: const Text('Click Me'),
              ),
              const SizedBox(width: 16,),
              const SizedBox(width: 16,),

              TextButton.icon(onPressed: (){}, icon: Icon(Icons.radio), label: Text('Opa',)),

              const SizedBox(width: 16,),
            ],
          ),
          Expanded(
            child: Center(
              child: Text("Texto no center",style: estiloTexto),
            ),
          )
        ],
      ),
    );
  }
}
