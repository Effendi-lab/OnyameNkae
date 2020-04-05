import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

import 'package:onyamenkae/audio_player.dart';

class DenyeAyeyiNeAnuonyam extends StatefulWidget {
  @override
  _DenyeAyeyiNeAnuonyamState createState() => _DenyeAyeyiNeAnuonyamState();
}

class _DenyeAyeyiNeAnuonyamState extends State<DenyeAyeyiNeAnuonyam> {
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
    denye1AudioStop();
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
              appBar: PreferredSize(preferredSize: Size.fromHeight(50.0),
                child: GradientAppBar(
                  title: Text(
                    "Onyame Nkae",
                    style:  TextStyle(fontSize: 25, fontFamily: "NotoSerif"),
                  ),
                  centerTitle: true, elevation: 50, gradient: LinearGradient(colors: [Colors.black, Colors.red[300]]),
                ),
              ),
              body: Scaffold(
                appBar:PreferredSize(
                  preferredSize: Size.fromHeight(40.0),
                  child: GradientAppBar(title: Text("Denyɛ", style:  TextStyle(fontSize: 20, fontFamily: "NotoSerif"),),
                    automaticallyImplyLeading: false, gradient: LinearGradient(colors: [Colors.black, Colors.red[300]]),

                    actions: <Widget>[

                      IconButton(icon: Icon(Icons.play_circle_outline,),
                        iconSize: 30,
                        onPressed: () =>
                        {
                          denye1AudioPlay()
                        },),
                      IconButton(
                        icon: Icon(Icons.stop,), iconSize: 30, onPressed: () =>
                      {
                        denye1AudioStop()
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

                                  child: AutoSizeText("Ayeyi ne anuonyam nka Wo, O Nyankopɔn! Ma ho kwan na da a yɛbɛtwiw abɛn Wo kronkronbea no mmra ntɛm "
                        "ntɛm. Ma yɛn koma ani nnye wɔ Wo dɔ tumi ne Woanisɔ mu, ma yɛn nnyina pintinn sɛnea ɛbɛyɛ a ɛde yɛn bɛhyɛ "
                        "Wo Pɛ ne Wo Nhyehyɛe ase. Nokware, Wo nimdee bunkam ade nyinaa a Woabɔ ne nea Wobɛkɔ so abɔ na, Wo tumi "
                                      "korɔn na ɛboro ade nyinaa a ɛwɔ hɔ na Wo pɛ mu ɛbɛtena hɔ.",
                                    style: TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),

                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Obi bi nni hɔ a ɛsɛ sɛ wɔsom no gye Wo nkutoo, ɔfoforo bi nni hɔ a wɔpere hwehwɛ no gye Wo, "
                                      "obi nni hɔ a ɔsɛ nkamfo ka Wo ho na obi bi nni hɔ a wɔdɔ no gye nea ɛsɔ Woani.",
                                    style:  TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),

                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Nokware, Wo ne Ɔhene kɛse no Nokware kann no, Ahokyere mu Boafo, "
                                      "Wo a wodi woankasa Wo ho so.",
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