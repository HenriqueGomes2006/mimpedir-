import 'package:flutter/material.dart';
import 'package:mimpedir/usuario.dart';
import 'tipo.dart';
import 'restaurante.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Usuario u = Usuario(
      codigo: 1,
      login: "Rodolfo123",
      nome: "Henrique",
      senha: "@senhaforte123"
    );

    Tipo t = Tipo(
      codigo: 1,
      nome: "Japones"
    );

    Restaurante r = Restaurante(
      codigo: 1,
      nome: "Faustão Restaurante",
      latitude: "21.5521",
      longitude: "23.2144",
      proprietario: u,
      tipo: t
    );

    return MaterialApp(
     home: Scaffold(
       appBar: AppBar (
          title: const Text("Meus Dados: ")
       ),
       body: Center(
         child: Padding(padding : const EdgeInsets.all(18.30),
         child: Column(
           children: [
             Text("Nome: ${u.nome} "),
             Text("Código: ${u.codigo} "),
             Text("Login: ${u.login} "),
             Text("Senha: ${u.senha} "),
             Text(": Propietario ${r.proprietario?.nome}"),
             Text("Tipo ${r.tipo?.nome}")
           ],
         ),
         ),
       ),
     ),
    );
  }
}

