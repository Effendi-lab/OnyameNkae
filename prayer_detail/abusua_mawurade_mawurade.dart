import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:onyamenkae/audio_player.dart';

class AbusuaMawurade extends StatefulWidget {
  @override
  _AbusuaMawuradeState createState() => _AbusuaMawuradeState();
}

class _AbusuaMawuradeState extends State<AbusuaMawurade> {
  double _prevScale;
  double _scale;

  @override
  void initState() {
    super.initState();
    _prevScale = _scale = 1.0;
  }

  @override
  void dispose(){
    super.dispose();
    abusua2AudioStop();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onScaleUpdate: (ScaleUpdateDetails details) {
          setState(() {
            _scale = (_prevScale * (details.scale));
          });
        },
        onScaleEnd: (ScaleEndDetails details) {
          setState(() {
            _prevScale = _scale;
          });
        },
        child: SafeArea(
            child: Scaffold(
              appBar: PreferredSize(
                preferredSize: Size.fromHeight(50),
                child: GradientAppBar(
                  title: Text(
                    "Onyame Nkae",
                    style:  TextStyle(fontSize: 25, fontFamily: "NotoSerif"),
                  ),
                  centerTitle: true, elevation: 50, gradient: LinearGradient(colors: [Colors.black,Colors.red[300],]),
                ),
              ),
              body: Scaffold(
                appBar: PreferredSize(
                  preferredSize: Size.fromHeight(40),
                  child: GradientAppBar(title: Text("Abusua", style: TextStyle(fontSize: 20, fontFamily: "NotoSerif"),),
                    automaticallyImplyLeading: false, gradient: LinearGradient(colors: [Colors.black,Colors.red[300],]),

                    actions: <Widget>[

                      IconButton(icon: Icon(Icons.play_circle_outline,),
                        iconSize: 30,
                        onPressed: () =>
                        {
                          abusua2AudioPlay()
                        },),
                      IconButton(
                        icon: Icon(Icons.stop,), iconSize: 30, onPressed: () =>
                      {
                        abusua2AudioStop()
                      },)
                    ],
                    centerTitle: true,


                  ),
                ),
                body: ListView(
                  children: <Widget>[
                    Card(
                      elevation: 3,
                      margin: EdgeInsets.all(11),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 16, 8, 10),
                        child: Column(

                          children: <Widget>[

                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("M'Awurade, m'Awurade! Mekamfo Wo na meda Wo ase sɛ Woahu W'afenaa mmɔborɔni mmɔbɔ;  W'akoa mekotow srɛ Wo brɛ me ho ase, "
                        "efisɛ Woagye W'afenaa taataa de no aba W'ahemman no mu, Woama wate Wo Frɛ Kɛse no wɔ ɔhonam wiase ha na wahu Wo Nsɛnkyerɛnne a "
                                      "ɛdi adanse kyerɛ W'ahenni a ɛda adi wɔ abɔde nyinaa so.",
                                    style: TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8, ),
                                ),
                              ],
                            ),
                            Divider(
                              height: 15,
                              color: Colors.transparent,
                            ),

                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("O me Wura, mede nea ɛhyɛ me yafunu mu yi hyɛ Wo nsam. Ma ho kwan na akokoa no abɛyɛ nea "
                                      "ɔfata W'ahemman mu na ma W'adom ne W'adɔe no mma ne ti nyɛ yiye na onyin wɔ Wo ntetee ne nkyerɛkyerɛ kwan so.",
                                    style:  TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8, ),
                                ),
                              ],
                            ),

                            Divider(
                              height: 15,
                              color: Colors.transparent,
                            ),

                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Nokware Wo ne Ɔdomfo! Nokware Wo ne Adɔe Kɛse Awurade no.",
                                    style: TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8, ),
                                ),
                              ],
                            ),

                            Divider(
                              height: 15,
                              color: Colors.transparent,
                            ),

                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: AutoSizeText("'Abdu'l-Bahá", style: TextStyle(fontSize: 20*_scale,
                                        fontWeight: FontWeight.bold, fontFamily: "NotoSans"),
                                      textAlign: TextAlign.end, maxFontSize: 56, minFontSize: 8,),
                                  ),
                                ),
                              ],
                            )




                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )));
  }
}
