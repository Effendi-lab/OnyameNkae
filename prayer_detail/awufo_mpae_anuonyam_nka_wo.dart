import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

import 'package:onyamenkae/audio_player.dart';

class AwufoMpaeAnuonyamNkaWo extends StatefulWidget {
  @override
  _AwufoMpaeAnuonyamNkaWoState createState() => _AwufoMpaeAnuonyamNkaWoState();
}

class _AwufoMpaeAnuonyamNkaWoState extends State<AwufoMpaeAnuonyamNkaWo> {
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
    awufoMpae1AudioStop();
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
                  child: GradientAppBar(title: Text("Mpae A Wɔbɔ Ma Awufo", style:  TextStyle(fontSize: 20, fontFamily: "NotoSerif"),),
                    automaticallyImplyLeading: false, gradient: LinearGradient(colors: [Colors.black, Colors.red[300]]),

                    actions: <Widget>[

                      IconButton(icon: Icon(Icons.play_circle_outline,),
                        iconSize: 30,
                        onPressed: () =>
                        {
                          awufoMpae1AudioPlay()
                        },),
                      IconButton(
                        icon: Icon(Icons.stop,), iconSize: 30, onPressed: () =>
                      {
                        awufoMpae1AudioStop()
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

                                  child: AutoSizeText("Anuonyam nka Wo! O Awurade me Nyankopɔn. Ɛmma nea Wonam Wo daapem tumi ama no so no anim ngu ase. "
                       "Mfa Woho nhintaw nea Woama no ahyɛn Wo daapem asɔrefi hɔ no.",
                                    style: TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),

                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("O me Nyankopɔn, so Wobɛtow nea Wode Wo tumi kɛse koraa ne so no akyene anaa, O m'Ahwehwɛde na so "
                                      "Wobɛpam nea Woyɛ ne guankɔbea no afi Woanim anaa?",
                                    style:  TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),
                            Divider(height: 15, color: Colors.transparent,),

                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Wobɛtumi agu nea Woama no so nso anim ase, anaa Wo werɛ bɛfi nea Womaa no ho kwan ma ɔkaee Wo no? "
                                      "Anuonyam, nka Wo! Anuonyam kɛse nka Wo!",
                                    style:  TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),
                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Wo a Wofi tete nteredee di abɔde nyinaa so Hene ne Ne Farebae, na Wobɛkɔ so ayɛ abɔde nyinaa so "
                                      "Awurade ne ne Wura afebɔɔ. Anuonyam nka Wo, O me Nyankopɔn!",
                                    style: TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),
                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Sɛ Woyi W'ahummɔbɔ fi Wo nkoa so a, hena bio na ɔbɛhu wɔn mmɔbɔ? Na sɛ Woantwitwa annye W'adɔfo a, "
                                      "hena na ɔwɔ hɔ a ɔbɛtwitwa agye wɔn?",
                                    style: TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),
                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Anuonyam nka Wo; anuonyam a enni kabea nka Wo. Yɛkorɔn Wo wɔ Wo nokware mu  na Wo na nokware mu "
                                "yɛn nyinaa som; na Woda Wo ho Adi wɔ Wo tenenee mu; na Wo na nokware ni yɛn nyinaa di Wo ho adanse. Wo, "
                                      "na nokware ni, Wonam W'adom so dɔ yɛn.",
                                    style: TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),
                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Onyame foforo bi nni hɔ ka Wo ho, Amanehunu ne Atoyerɛnkyɛm mu Boafo, Wo a Wote Wo ho so.",
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
                                    child: AutoSizeText("Bahá'u'lláh", style: TextStyle(fontSize: 20*_scale,
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