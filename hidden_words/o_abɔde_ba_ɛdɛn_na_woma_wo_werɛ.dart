import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:onyamenkae/audio_player.dart';

class OAbodeBaEdenNaWomaWoWere extends StatefulWidget {
  @override
  _OAbodeBaEdenNaWomaWoWereState createState() => _OAbodeBaEdenNaWomaWoWereState();
}

class _OAbodeBaEdenNaWomaWoWereState extends State<OAbodeBaEdenNaWomaWoWere> {
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
    oAbodeBaEdenNaWomaWoWereAudioStop();
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
                    style:  TextStyle(fontSize: 25 , fontFamily: "NotoSerif"),
                  ),
                  centerTitle: true, elevation: 50, gradient: LinearGradient(colors: [Colors.black, Colors.red[300]]),
                ),
              ),
              body: Scaffold(
                appBar: GradientAppBar(title: Text("Ahintasɛm", style: TextStyle(fontSize: 20, fontFamily: "NotoSerif"),),
                  automaticallyImplyLeading: false, gradient: LinearGradient(colors: [Colors.black, Colors.red[300]]),

                  actions: <Widget>[

                    IconButton(icon: Icon(Icons.play_circle_outline,),
                      iconSize: 30,
                      onPressed: () =>
                      {
                        oAbodeBaEdenNaWomaWoWereAudioPlay()
                      },),
                    IconButton(
                      icon: Icon(Icons.stop,), iconSize: 30, onPressed: () =>
                    {
                      oAbodeBaEdenNaWomaWoWereAudioStop()
                    },)
                  ],
                  centerTitle: true,


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

                                  child: AutoSizeText("O ABƆDE BA!",
                                    style: TextStyle(fontSize: 20*_scale, fontWeight: FontWeight.bold, fontFamily: "NotoSerif"),
                                    textAlign: TextAlign.center, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),
                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Ɛdɛn na woma wo werɛ fi w'ankasa wo mfomso na w'ani ku afoforo bɔne ho? "
                                      "Obiara a ɔyɛ eyi no Me nnomme wɔ ne so.",
                                    style: TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
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
                                    child: AutoSizeText("(26)", style: TextStyle(fontSize: 20*_scale,),
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