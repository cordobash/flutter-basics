import 'package:flutter/material.dart';
import 'package:hello_world_app/presentation/screens/counters/counter_functions_screen.dart';
import 'package:hello_world_app/presentation/screens/counters/counter_screen.dart';

void main(List<String> args) {
  //  print('Hola mundo');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:
          false, // para ocultar la etiqueta de modo desarrollo
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.blue),
      //  home: Scaffold(body: Center(child: Text('Hola mundo'))),
      home: Scaffold(body: CounterFunctionsScreen()),
    );
  }
}
