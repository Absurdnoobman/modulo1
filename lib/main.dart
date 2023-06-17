import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Hello world"),
        ),
        body: const Modulo()
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
  // void calculate() {

  // }

  @override
  Widget build(BuildContext context) {
    int a;
    int b;

    // final myController = TextEditingController();

    // @override
    // void initState() {
    //   super.initState();
    //   myController.addListener(calculate) ;
    // }

    // @override
    // void dispose() {
    //   myController.dispose();
    //   super.dispose();
    // }

    return Column(
      children: [
        const Padding(
            padding: EdgeInsets.only(top: 100.0, bottom: 50.0),
            child: Expanded(
              child: Text(
                "หารเอาเศษ",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            )),
        Row(
          children: <Widget>[
            Expanded(
              // padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'a',
                ),
                onChanged: (value) {
                  a = int.parse(value);
                },
              ),
            ),
          ],
        )
      ],
    );
  }
}
