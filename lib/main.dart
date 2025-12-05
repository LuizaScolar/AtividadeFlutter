import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // remove o banner de debug
      theme: ThemeData(
        primaryColor: Colors.deepPurple[900], // roxo escuro
        scaffoldBackgroundColor: Colors.grey[850], // cinza escuro
        textTheme: TextTheme(
          bodyMedium: TextStyle(color: Colors.white), // texto branco
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white, // texto do botão branco
            backgroundColor: Colors.deepPurple[700], // fundo roxo escuro
          ),
        ),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int contador = 0;
  final int limite = 10;

  bool get isZero => contador == 0;
  bool get isFull => contador == limite;

  void incrementar() {
    if (!isFull) {
      setState(() {
        contador++;
      });
    }
  }

  void decrementar() {
    if (!isZero) {
      setState(() {
        contador--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contador"),
        backgroundColor: Colors.deepPurple[900],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              isFull ? "Lotado" : "$contador",
              style: TextStyle(
                fontSize: 40,
                color: Colors.white, // letras brancas
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: isZero ? null : decrementar,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: isZero
                        ? Colors.grey
                        : Colors.deepPurple[700], // botão cinza se desativado
                  ),
                  child: Text("Decrementar"),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: isFull ? null : incrementar,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: isFull
                        ? Colors.grey
                        : Colors.deepPurple[700], // botão cinza se desativado
                  ),
                  child: Text("Incrementar"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
