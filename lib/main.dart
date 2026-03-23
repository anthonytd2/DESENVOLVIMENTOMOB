import 'package:flutter/material.dart';

void main() {
  runApp(const MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Pedra, Papel, Tesoura',
      debugShowCheckedModeBanner: false,
      home: TelaJogo(),
    );
  }
}

class TelaJogo extends StatefulWidget {
  const TelaJogo({super.key});

  @override
  State<TelaJogo> createState() => _TelaJogoState();
}

class _TelaJogoState extends State<TelaJogo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pedra, Papel, Tesoura"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              "Escolha do App:",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Image.asset("assets/images/circulo.png", height: 120),
            const Text(
              "Sua Escolha:",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Image.asset("assets/images/pedra.png", height: 100),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Image.asset("assets/images/papel.png", height: 100),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Image.asset("assets/images/tesoura.png", height: 100),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class TelaResultado extends StatelessWidget {
  final String resultado;
  final String imagemDoApp;
  final String imagemDoUsuario;
  final String iconeResultado;

  const TelaResultado({
    super.key,
    required this.resultado,
    required this.imagemDoApp,
    required this.imagemDoUsuario,
    required this.iconeResultado,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Resultado"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("assets/images/$imagemDoApp.png", height: 80),
            const Text(
              "Escolha do App",
              style: TextStyle(fontSize: 18),
            ),
            Image.asset("assets/images/$imagemDoUsuario.png", height: 80),
            const Text(
              "Sua Escolha",
              style: TextStyle(fontSize: 18),
            ),
            Image.asset(
              iconeResultado,
              height: 150,
              width: 150,
              fit: BoxFit.contain,
            ),
            Text(
              resultado,
              style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              ),
              child: const Text("Jogar Novamente", style: TextStyle(fontSize: 18)),
            )
          ],
        ),
      ),
    );
  }
}