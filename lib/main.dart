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
          body: const Center(
            child: Modulo(),
          )),
    );
  }
}

class Modulo extends StatefulWidget {
  const Modulo({super.key});
  @override
  State<Modulo> createState() => _ModuloState();
}

class _ModuloState extends State<Modulo> {
  num a = 3;
  num b = 3;
  String result = "";
  @override
  Widget build(BuildContext context) {
    
    // calculate() {
    //   if (a != null && b != null) {
    //     result = (a! % b!).toString();
    //   }
    // }

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
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                // padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'a',
                  ),
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    var err = num.tryParse(value);
                    if (err != null) {
                      a = err;
                    }
                  },
                ),
              ),
              Container(
                width: 8.5,
              ),
              Expanded(
                // padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'b',
                  ),
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    var err = num.tryParse(value);
                    if (err != null) {
                      b = err;
                    }
                  },
                ),
              ),
            ],
          ),
        ),
        TextButton(
          onPressed: () { 
            setState(() {
              var r = a % b;
              result = r.toString();
            });
            
          }, 
          
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all<Color>(Colors.blue)
          ),
          child: const Text("Find Result"),
        ),
        Center(
          child: Text("The result is $result"),
        )
      ],
    );
  }
}
