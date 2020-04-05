import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:onyamenkae/audio_player.dart';

class BanboOMawuradeWonim extends StatefulWidget {
  @override
  _BanboOMawuradeWonimState createState() => _BanboOMawuradeWonimState();
}

class _BanboOMawuradeWonimState extends State<BanboOMawuradeWonim> {
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
    banbo2AudioStop();
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
              appBar: PreferredSize( preferredSize: Size.fromHeight(50.0),
                child: GradientAppBar(
                  title: Text(
                    "Onyame Nkae",
                    style:  TextStyle(fontSize: 25, fontFamily: "NotoSerif"),
                  ),
                  centerTitle: true, elevation: 50, gradient: LinearGradient(colors: [Colors.black, Colors.red[300]]),
                ),
              ),
              body: Scaffold(
                appBar: PreferredSize( preferredSize: Size.fromHeight(40.0),
                  child: GradientAppBar(title: Text("Banbɔ", style: TextStyle(fontSize: 20, fontFamily: "NotoSerif"),),
                    automaticallyImplyLeading: false, gradient: LinearGradient(colors: [Colors.black, Colors.red[300]]),

                    actions: <Widget>[

                      IconButton(icon: Icon(Icons.play_circle_outline,),
                        iconSize: 30,
                        onPressed: () =>
                        {
                          banbo2AudioPlay()
                        },),
                      IconButton(
                        icon: Icon(Icons.stop,), iconSize: 30, onPressed: () =>
                      {
                        banbo2AudioStop()
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
                        padding: const EdgeInsets.fromLTRB(8, 16, 8, 10),
                        child: Column(

                          children: <Widget>[


                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("O m'Awurade! Wonim sɛ ɔyaw ne abɛbrɛsɛ atwa nnipa ho ahyia. Na ahokyere ne ɔhaw afa baabiara. "
                        "Sɔhwɛ biara mene nnipa na ahokyere biara ano yɛ den taataa no te sɛ nea ɔne aprammire na ɛredi asi. "
                                      "Hintabea ne guankɔbea biara nni baabi gye Wo banbɔ ntaban ase, Wo kora, Wo wɛn ne Wo hwɛ ase.",
                                    style: TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),

                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("O Wo a Woyɛ Ahummɔbɔ!, O m'Awurade! Ma Wo banbɔn nyɛ m'akode, ma Wo kora nyɛ m'akokyɛm, "
                            "ma ahobrɛase a ɛwɔ Wo biakoyɛ po ano nhwɛ me so, na ma Wo hwɛ ne banbɔ nyɛ me tintimman ne m'atenae. "
                                      "Twe me fi m'ankasa me nsusui ne m'apɛde ho, na bɔ me ho ban fi ɔyare, sɔhwɛ, ahokyere ne tibɔne biara ho",
                                    style:  TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),
                            Divider(height: 15, color: Colors.transparent,),

                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Nokware wo ne Ɔkorafo no, Wo ne Ɔhwɛfo no, Wo ne Ɔbanbɔfo no, Wo na Woma biribiara di mu, "
                                      "na nokware, Wo ne Ahummɔbɔ mu Ahummɔbɔ no.",
                                    style:  TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),
                            Divider(height: 15, color: Colors.transparent,),


                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: AutoSizeText("'Abdu'l-Bahá", style: TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans",fontWeight: FontWeight.bold),
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