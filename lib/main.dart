import 'package:flutter/material.dart';

import 'package:cadastro_cliente/modelos/cliente.dart '; //importa o modelo cliente BD

final GerenciadorClientes gerenciadorClientes =
    GerenciadorClientes(); //cria a instancia unica do gerenciador de clientes

void main() {
  gerenciadorClientes.cadastrar(
    Cliente(nome: "admin", email: "admin@email.com", senha: "admin"),
  );
  runApp(const AplicativoCliente());
}

class AplicativoCliente extends StatelessWidget {
  const AplicativoCliente({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sistema de Clientes',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.indigo, useMaterial3: true),
      home:  TelaPrincipal(
        cliente: Cliente(nome: 'DEV', email: 'dev@email.com', senha: '0'),
      ),
    );
  }
}

class TelaPrincipal extends StatelessWidget {47
  final Cliente cliente;
  const TelaPrincipal({super.key, required this.cliente});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tela Principal (Em Construção)'),
      ),
      body: Center(
        child: Text(
          'Bem-vindo, ${cliente.nome}!!',
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

class TelaLogin extends StatelessWidget {
  const TelaLogin({super.key});
  @override
  Widget build(BuildContext context) => const Scaffold(
    body: Center(
      child: Text("Login..."),
    )
  );
}

class TelaCadastro extends StatelessWidget {
  const TelaCadastro ({super.key});
  @override
  Widget build(BuildContext context) => const Scaffold(
    body: Center(
      child: Text("Cadasto..."),
    ),
  );
  
}