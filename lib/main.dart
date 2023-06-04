import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Modulo()
      ),
    );
  }
}

class Modulo extends StatefulWidget {
  const Modulo({super.key});

  @override
  State<Modulo> createState() => _ModuloState();
}

class _ModuloState extends State<Modulo> {
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          "หารเอาเศษ", 
          textAlign: TextAlign.center,
        ),
        
      ],
    );
  }
}