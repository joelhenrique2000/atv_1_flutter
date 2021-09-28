import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.greenAccent,
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Atv 1'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  final nomeController = TextEditingController();
  final idadeController = TextEditingController();
  final localizacaoController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    nomeController.dispose();
    idadeController.dispose();
    localizacaoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Container(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        padding: EdgeInsets.only(
          top: 60,
          left: 60,
          right: 60
        ),
        alignment: Alignment.center,
        child: ListView(
          children: <Widget>[
            Center(
              child: Text(
                "Cadastro Avicultor",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 19),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            TextFormField(
              controller: nomeController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Nome",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20
                )
              ),
            ),
            SizedBox(
              height: 16,
            ),
            TextFormField(
              controller: idadeController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "Idade",
                  labelStyle: TextStyle(
                      color: Colors.black38,
                      fontWeight: FontWeight.w400,
                      fontSize: 20
                  )
              ),
            ),
            SizedBox(
              height: 16,
            ),
            TextFormField(
              controller: localizacaoController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  labelText: "Localização",
                  labelStyle: TextStyle(
                      color: Colors.black38,
                      fontWeight: FontWeight.w400,
                      fontSize: 20
                  )
              ),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 16,
            ),
            FlatButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      // Retrieve the text the that user has entered by using the
                      // TextEditingController.
                      content: Text('Nome: ' + nomeController.text + ' Idade: ' + idadeController.text + ' Localização: ' + localizacaoController.text),
                    );
                  },
                );
              },
              child: Text("Cadastrar"),
              color: Colors.black12,
            )

          ],
        ),
      )
    );
  }
}
