import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

import 'package:onyamenkae/audio_player.dart';

class BanboWoOtumfoNyankopon extends StatefulWidget {
  @override
  _BanboWoOtumfoNyankoponState createState() => _BanboWoOtumfoNyankoponState();
}

class _BanboWoOtumfoNyankoponState extends State<BanboWoOtumfoNyankopon> {
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
    banbo1AudioStop();
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
                          banbo1AudioPlay()
                        },),
                      IconButton(
                        icon: Icon(Icons.stop,), iconSize: 30, onPressed: () =>
                      {
                        banbo1AudioStop()
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

                                  child: AutoSizeText("Wɔ Otumfo Nyankopɔn a tumi ne Adom nyinaa yɛ ne dea, na Obunkam fa nneɛma nyinaa so no Din mu.",
                                    style:  TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),

                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Kronkron ne Awurade nea ahenni mfiase hyɛ Ne nsam. Wo na Wonam W'Asɛm a ɛka se 'Ɛnyɛ Hɔ' a 'Ɛyɛ Hɔ', "
                            "so bɔɔ nea Wopɛ. Ɔno na tumi nyinaa yɛ Ne dea fi tete besi nnɛ, a ɛda so yɛ Ne dea afebɔɔ. Ɔno na ɔma "
                                      "nkonim dom nea Ɔpɛ, Wɔ Ne pɛ tumi mu. Nokware, Otumfo ne Anuonyamfo ne no.",
                                    style:  TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),
                            Divider(height: 15, color: Colors.transparent,),

                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Ɔno na anuonyam ne Kɛseyɛ a ɛwɔ Adiyisɛm ne Adebɔ a ɛfi ɔsoro ahemman mu anaa biribiara a ɛwɔ wɔn ntam no nyinaa "
                            "yɛ Ne dea. Ɔyɛ Tumi ne Anuonyam nyinaa Wura. Efi tete Ɔno ne ahoɔden nyinaa a biribiara rentumi No ti "
                            "na ɛbɛkɔ so saa ara afebɔɔ. Nokware Ɔyɛ ahoɔden ne tumi Wura. Ahenni a ɛwɔ ɔsoro ne asase so, ne nea ɛwɔ "
                            "ntam nyinaa yɛ Ne dea, na Ne tumi bunkam ade nyinaa so. Ɔsoro ne asase so ahonya nyinaa ne biribiara a ɛwɔ mfinimfini yɛ ne de, na Ne banbɔ bunkam nneɛma nyinaa so. "
                            "Ɔno na ɔbɔɔ ɔsoro ne asase ne nea ɛwɔ ntam nyinaa, na nokware mu, Ɔdi biribiara ho adanse. "
                            "Ɔyɛ Awurade a n'ani ku nea ɛwɔ ɔsoro ne asase so, ne nea ɛwɔ ntam nyinaa, na nokware Onyame ho yɛ hare wɔ n'aniku ho. Ɔno na ɔhyehyɛ nneɛma nyina a ɛsɛ obiara a "
                            "ɔwɔ ɔsoro ne asase yi so ne nea ɛwɔ ntam nyinaa. Nokware, Ɔyɛ ne Banbɔfo kɛse ampa. Ɔsoro ne asase safe "
                            "ne nneɛma nyinaa a ɛwɔ mfinimfini hyɛ ne nsa. Ne pɛ mu, Ɔkyɛ ade, ɛnam Ne tumi nti. Nokware, N'adom "
                            "bunkam ade nyinaa so, na Ɔyɛ Nyame Nimade. Ka se: Onyankopɔn som me bo; Ɔno na ahenni nyinaa hyɛ Ne "
                            "nsam. Ɔnam Ne dɔm a wɔwɔ ɔsoro ne asase ne nea ɛwɔ wɔn ntam nyinaa tumi so bɔ Ne nkoa mu nea Ɔpɛ ho ban. "
                            "Nokware, Onyankopɔn aniku bɔ nneɛma nyinaa ho ban.",
                                    style:  TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),
                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Woyɛ Ɔkɛse a yɛrentumi mfa biribiara nsusuw Wo kɛseyɛ, O Awurade! Bɔ yɛn ho ban fi nea ɛwɔ yɛ "
                                "anim ne yɛn akyi, yɛn atifi, yɛn nifa so, yɛn benkum so, yɛn nan ase ne ɔfa biara a yɛn ho da adagyaw. "
                                      "Ampa, Wo banbɔ ho ntɔ kyima da. (nneɛma a Wobɔ ho ban nyinaa nni nkogu da).",
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
                                    child: AutoSizeText("Báb", style: TextStyle(fontSize: 20*_scale,
                                        fontFamily: "NotoSans",fontWeight: FontWeight.bold),
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