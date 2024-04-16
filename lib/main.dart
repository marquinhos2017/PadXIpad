import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PADX',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

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
  var msg = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    msg = "";
  }

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
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
        body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.all(36.0),
        child: Column(
          children: [
            Container(
              height: 280,
              decoration: BoxDecoration(
                  color: Color(0xff1F1F21),
                  borderRadius: BorderRadius.circular(24)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {
                              if (msg == "C") {
                                setState(() {
                                  msg = "Parando C";
                                });
                              } else {
                                setState(() {
                                  msg = "C";
                                });
                              }
                            },
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin:
                                        EdgeInsets.only(right: 12, bottom: 12),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: (msg == "C"
                                                ? Colors.white
                                                : Colors.black)),
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'assets/pad.jpg'), // Substitua 'assets/imagem.png' pelo caminho da sua imagem
                                          fit: BoxFit
                                              .cover, // Ajuste para cobrir o contêiner
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    width: 300,
                                    height: 180,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                          margin: EdgeInsets.only(right: 8),
                                          child: (msg == "C")
                                              ? Image.asset('assets/stop.png')
                                              : Image.asset('assets/play.png')),
                                      Text(
                                        "Paradise C",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 18),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {
                              if (msg == "D") {
                                setState(() {
                                  msg = "Parando D";
                                });
                              } else {
                                setState(() {
                                  msg = "D";
                                });
                              }
                            },
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin:
                                        EdgeInsets.only(right: 12, bottom: 12),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: (msg == "D"
                                                ? Colors.white
                                                : Colors.black)),
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'assets/pad.jpg'), // Substitua 'assets/imagem.png' pelo caminho da sua imagem
                                          fit: BoxFit
                                              .cover, // Ajuste para cobrir o contêiner
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    width: 300,
                                    height: 180,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                          margin: EdgeInsets.only(right: 8),
                                          child: (msg == "D")
                                              ? Image.asset('assets/stop.png')
                                              : Image.asset('assets/play.png')),
                                      Text(
                                        "Paradise D",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 18),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {
                              if (msg == "E") {
                                setState(() {
                                  msg = "Parando E";
                                });
                              } else {
                                setState(() {
                                  msg = "E";
                                });
                              }
                            },
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin:
                                        EdgeInsets.only(right: 12, bottom: 12),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: (msg == "E"
                                                ? Colors.white
                                                : Colors.black)),
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'assets/pad.jpg'), // Substitua 'assets/imagem.png' pelo caminho da sua imagem
                                          fit: BoxFit
                                              .cover, // Ajuste para cobrir o contêiner
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    width: 300,
                                    height: 180,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                          margin: EdgeInsets.only(right: 8),
                                          child: (msg == "E")
                                              ? Image.asset('assets/stop.png')
                                              : Image.asset('assets/play.png')),
                                      Text(
                                        "Paradise E",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 18),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {
                              if (msg == "F") {
                                setState(() {
                                  msg = "Parando F";
                                });
                              } else {
                                setState(() {
                                  msg = "F";
                                });
                              }
                            },
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin:
                                        EdgeInsets.only(right: 12, bottom: 12),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: (msg == "F"
                                                ? Colors.white
                                                : Colors.black)),
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'assets/pad.jpg'), // Substitua 'assets/imagem.png' pelo caminho da sua imagem
                                          fit: BoxFit
                                              .cover, // Ajuste para cobrir o contêiner
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    width: 300,
                                    height: 180,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                          margin: EdgeInsets.only(right: 8),
                                          child: (msg == "F")
                                              ? Image.asset('assets/stop.png')
                                              : Image.asset('assets/play.png')),
                                      Text(
                                        "Paradise F",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 18),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ],
                  ),
                ),
              ),
            ),
            Text(
              msg,
              style: TextStyle(color: Colors.white, fontSize: 56),
            ),
          ],
        ),
      ),
    ));
  }
}
