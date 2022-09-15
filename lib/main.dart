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
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'MyApp'),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Text("BERITA TERBARU"),
                  Text("PERTANDINGAN HARI INI"),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.purpleAccent,
                  width: 2,
                ),
              ),
              child: Column(
                children: [
                  Image.asset('assets/images/costa.jpg'),
                  const Text('Costa Mendekat Ke Palmerias',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          height: 2)),
                ],
              ),
            ),
            Container(
              color: Colors.purpleAccent,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: Row(
                children: const [
                  Text(
                    'Transfer',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.black),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Image.asset(
                          "assets/images/pique.jpeg",
                          width: 5.0,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(10, 0, 0, 10),
                          child: const Text(
                              "Pique Bilang Wasit Untungkan Madrid, Koeman Tepok Jidat"),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      border: Border(
                        top: BorderSide(width: 1, color: Colors.black),
                      ),
                    ),
                    child: const Text("Sabtu, 10 September 2022"),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.black),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Image.asset(
                          "assets/images/pique.jpeg",
                          width: 5.0,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(10, 0, 0, 10),
                          child: const Text(
                              "Pique Bilang Wasit Untungkan Madrid, Koeman Tepok Jidat"),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      border: Border(
                        top: BorderSide(width: 1, color: Colors.black),
                      ),
                    ),
                    child: const Text("Sabtu, 10 September 2022"),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
