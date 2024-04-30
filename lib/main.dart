import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

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

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var msg = "";

  bool pad_c = false;
  bool pad_d = false;
  bool pad_e = false;
  bool pad_f = false;

  final player_pad_c = AudioPlayer();
  final player_pad_d = AudioPlayer();
  final player_pad_e = AudioPlayer();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    player_pad_c.stop();
  }

  void _play_c() {
    player_pad_c.play(AssetSource('foundations/c.mp3'));
    _playing_c(player_pad_c);

    print("Playing C");
  }

  Future<void> _playing_c(AudioPlayer audioplayer) async {
    for (double i = audioplayer.volume; i <= 1; i += 0.1) {
      await Future.delayed(const Duration(milliseconds: 500), () {
        setState(() {
          audioplayer.setVolume((i));
        });
        print("Aumentando C Pad ${(audioplayer.volume).toStringAsFixed(1)}");
      });
      if (pad_c == false) {
        break;
      }
    }
  }

  void _stop_c() {
    _stoping_c(player_pad_c);

    print("Stoping C");
  }

  Future<void> _stoping_c(AudioPlayer audioplayer) async {
    for (double i = audioplayer.volume; i >= 0; i -= 0.1) {
      await Future.delayed(const Duration(milliseconds: 500), () {
        setState(() {
          audioplayer.setVolume((i));
        });
        print("Diminuindo Pad C ${(audioplayer.volume).toStringAsFixed(1)}");
      });
      if (pad_c == true) {
        break;
      }
      if ((audioplayer.volume).toStringAsFixed(1) == "0.0") {
        audioplayer.stop();
        print("C Parado");
      }
    }
  }

  void _play_d() {
    player_pad_d.play(AssetSource('foundations/d.mp3'));
    _playing_d(player_pad_d);

    print("Playing D");
  }

  Future<void> _playing_d(AudioPlayer audioplayer) async {
    for (double i = audioplayer.volume; i <= 1; i += 0.1) {
      await Future.delayed(const Duration(milliseconds: 500), () {
        setState(() {
          audioplayer.setVolume((i));
        });
        print("Aumentando D Pad ${(audioplayer.volume).toStringAsFixed(1)}");
      });
      if (pad_d == false) {
        break;
      }
    }
  }

  void _stop_d() {
    _stoping_d(player_pad_d);

    print("Stoping D");
  }

  Future<void> _stoping_d(AudioPlayer audioplayer) async {
    for (double i = audioplayer.volume; i >= 0; i -= 0.1) {
      await Future.delayed(const Duration(milliseconds: 500), () {
        setState(() {
          audioplayer.setVolume((i));
        });
        print("Diminuindo Pad D ${(audioplayer.volume).toStringAsFixed(1)}");
      });
      if (pad_d == true) {
        break;
      }
      if ((audioplayer.volume).toStringAsFixed(1) == "0.0") {
        audioplayer.stop();
        print("D Parado");
      }
    }
  }

  void _play_e() {
    player_pad_e.play(AssetSource('foundations/e.mp3'));
    _playing_e(player_pad_e);

    print("Playing E");
  }

  Future<void> _playing_e(AudioPlayer audioplayer) async {
    for (double i = audioplayer.volume; i <= 1; i += 0.1) {
      await Future.delayed(const Duration(milliseconds: 500), () {
        setState(() {
          audioplayer.setVolume((i));
        });
        print("Aumentando E Pad ${(audioplayer.volume).toStringAsFixed(1)}");
      });
      if (pad_e == false) {
        break;
      }
    }
  }

  void _stop_e() {
    _stoping_e(player_pad_e);

    print("Stoping E");
  }

  Future<void> _stoping_e(AudioPlayer audioplayer) async {
    for (double i = audioplayer.volume; i >= 0; i -= 0.1) {
      await Future.delayed(const Duration(milliseconds: 500), () {
        setState(() {
          audioplayer.setVolume((i));
        });
        print("Diminuindo Pad E ${(audioplayer.volume).toStringAsFixed(1)}");
      });
      if (pad_c == true) {
        break;
      }
      if ((audioplayer.volume).toStringAsFixed(1) == "0.0") {
        audioplayer.stop();
        print("E Parado");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        color: Colors.black,
        image: DecorationImage(
          image: AssetImage('assets/pad.jpg'),
          opacity:
              0.2, // Substitua 'assets/imagem.png' pelo caminho da sua imagem
          fit: BoxFit.cover, // Ajuste para cobrir o contêiner
        ),
      ),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
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
                              if (pad_c != true) {
                                setState(() {
                                  pad_d = false;
                                  pad_e = false;
                                  pad_f = false;
                                });
                              }
                              setState(() {
                                if (pad_c == true) {
                                  _stop_c();
                                } else {
                                  _play_c();
                                  _stoping_d(player_pad_d);
                                  _stoping_e(player_pad_e);
                                }
                                pad_c = !pad_c;
                              });
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
                                            color: (pad_c == true
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
                                          child: (pad_c)
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
                              if (pad_d != true) {
                                setState(() {
                                  pad_c = false;
                                  pad_e = false;
                                  pad_f = false;
                                });
                              }
                              setState(() {
                                if (pad_d == true) {
                                  _stop_d();
                                } else {
                                  _play_d();
                                  _stoping_c(player_pad_c);
                                  _stoping_e(player_pad_e);
                                }
                                pad_d = !pad_d;
                              });
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
                                            color: (pad_d
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
                                          child: (pad_d == true)
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
                              if (pad_e != true) {
                                setState(() {
                                  pad_c = false;
                                  pad_d = false;
                                  pad_f = false;
                                });
                              }
                              setState(() {
                                if (pad_e == true) {
                                  _stop_e();
                                } else {
                                  _play_e();
                                  _stoping_c(player_pad_c);
                                  _stoping_d(player_pad_d);
                                }
                                pad_e = !pad_e;
                              });
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
                                            color: (pad_e
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
                                          child: (pad_e)
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
                              if (pad_f != true) {
                                setState(() {
                                  pad_c = false;
                                  pad_d = false;
                                  pad_e = false;
                                });
                              }
                              setState(() {
                                pad_f = !pad_f;
                              });
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
                                            color: (pad_f
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
                                          child: (pad_f == true)
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
            Row(
              children: [
                Text(
                  "Pad C: $pad_c ",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
                Text(
                  "Pad D: $pad_d ",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
                Text(
                  "Pad E: $pad_e ",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
                Text(
                  "Pad F: $pad_f ",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ],
            ),
            (pad_c == true || pad_d == true || pad_e == true || pad_f == true)
                ? Image.asset(
                    'assets/stop.png',
                  )
                : Image.asset('assets/play.png')
          ],
        ),
      ),
    ));
  }
}
