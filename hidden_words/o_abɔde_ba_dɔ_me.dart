import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:onyamenkae/audio_player.dart';

class OAbodeBaDoMe extends StatefulWidget {
  @override
  _OAbodeBaDoMeState createState() => _OAbodeBaDoMeState();
}

class _OAbodeBaDoMeState extends State<OAbodeBaDoMe> {
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
    oAbodeBaDoMeAudioStop();
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
                    style: TextStyle(fontSize: 25, fontFamily: "NotoSerif"),
                  ),
                  centerTitle: true, elevation: 50, gradient: LinearGradient(colors: [Colors.black, Colors.red[300]]),
                ),
              ),
              body: Scaffold(
                appBar: PreferredSize( preferredSize: Size.fromHeight(40.0),
                  child: GradientAppBar(title: Text("Ahintasɛm", style: TextStyle(fontSize: 20, fontFamily: "NotoSerif"),),
                    automaticallyImplyLeading: false, gradient: LinearGradient(colors: [Colors.black, Colors.red[300]]),

                    actions: <Widget>[

                      IconButton(icon: Icon(Icons.play_circle_outline,),
                        iconSize: 30,
                        onPressed: () =>
                        {
                          oAbodeBaDoMeAudioPlay()
                        },),
                      IconButton(
                        icon: Icon(Icons.stop,), iconSize: 30, onPressed: () =>
                      {
                        oAbodeBaDoMeAudioStop()
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

                                  child: AutoSizeText("O ABƆDE BA!",
                                    style: TextStyle(fontSize: 20*_scale, fontWeight: FontWeight.bold, fontFamily:"NotoSerif"),
                                    textAlign: TextAlign.center, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),
                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Dɔ Me, na ama Matumi adɔ wo. Sɛ Woannɔ Me a, ɔkwan biara so Me dɔ rennu wo so. Hu eyi, O akoa.",
                                    style: TextStyle(fontSize: 20*_scale, fontFamily:"NotoSans"),
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
                                    child: AutoSizeText("(5)", style: TextStyle(fontSize: 20*_scale,),
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