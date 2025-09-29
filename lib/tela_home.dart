import 'package:flutter/material.dart';
import 'package:mimpedir/editar_restaurante.dart';
import 'package:mimpedir/tela_cad_restaurante.dart';

class TelaHome extends StatelessWidget{
  TelaHome({super.key});

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tela Home')),
      body: Padding(padding: const EdgeInsets.all(20),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Lista de Restaurante:"),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => TelaCadRestaurante()));
          }, child: Text("Cadastrar Restaurante")),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:
            [
              Column(
                children: [
                  Text("Meu Restaurante"),
                  Text("Comida Mexicana")
                ],
              ),
              SizedBox(width: 10),
              ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => EditarRestaurante()));}, child: Text("Editar")),
              SizedBox(width: 10),
              ElevatedButton(onPressed: (){}, child: Text("Excluir")),
            ],
          ),
        ],
      )
      )
    );
  }
}