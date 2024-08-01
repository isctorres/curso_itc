import 'package:curso/screens/home_screen.dart';
import 'package:curso/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      routes: {
        "/home" : (context) => HomeScreen(),
      },
    );
  }
}
/*class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int contador = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          centerTitle: false,
          title: const Text('Contador de clicks'),
        ),
        body: Center(
          child: Text('Valor del Contador $contador', 
            style: TextStyle(fontSize: 25),),
        ),
        //floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.ads_click,color: Colors.purple,),
          onPressed: (){ 
            contador++; 
            print(contador);
            setState(() {});
          }
        ),
      ),
    );
  }
}*/