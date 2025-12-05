import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());

}

// atalho stless
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return MaterialApp(
      // Desabilita banner debug
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

//atalho stless
class HomePage extends StatelessWidget {
  HomePage({super.key});

  int contador =0;

  void decremento(){
    contador--;
    print(contador);
  }

  void incremento(){
   contador++;
  print(contador); 
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/img/hellokitty.jfif'),
          fit: BoxFit.cover,),
        ),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Pode Entrar',
            style: TextStyle(
              fontSize: 26.0,
              color: const Color.fromARGB(255, 120, 100, 152),
              fontWeight: FontWeight.w700,
            ),
          ),
           Padding(padding: EdgeInsetsGeometry.all(40),
          child: Text(contador.toString(),
             style: TextStyle(
              fontSize: 26.0,
              color: const Color.fromARGB(255, 121, 92, 148),
              fontWeight: FontWeight.w700,
             ),
            ),
          ),


          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                TextButton(onPressed:decremento,
                  style:  TextButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 125, 108, 148),
                    fixedSize: const Size(100,100),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                  child: Text('Sair',
                    style:TextStyle(
                      color:const Color.fromARGB(255, 255, 255, 255),
                      fontSize: 16,
                    )
                  ),
                ),
                 
              TextButton(onPressed: incremento,
                style:  TextButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 169, 148, 188),
                    fixedSize: const Size(100,100),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                ),
                child: Text('Entrar',
                  style:TextStyle(
                    color:Colors.black,
                    fontSize: 16,
                  )
                ),
              ),

            ],

          )
        ],
      ),
      )
    );
  }
}

