import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

import 'package:onyamenkae/audio_player.dart';

class SohweNeAhokyereBereAnuonyamNkaWo extends StatefulWidget {
  @override
  _SohweNeAhokyereBereAnuonyamNkaWoState createState() => _SohweNeAhokyereBereAnuonyamNkaWoState();
}

class _SohweNeAhokyereBereAnuonyamNkaWoState extends State<SohweNeAhokyereBereAnuonyamNkaWo> {
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
    sohweNeAhokyereBere1AudioStop();
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
                  child: GradientAppBar(title: Text("Sɔhwɛ Ne Ahokyere Bere", style:  TextStyle(fontSize: 20, fontFamily: "NotoSerif"),),
                    automaticallyImplyLeading: false, gradient: LinearGradient(colors: [Colors.black, Colors.red[300]]),

                    actions: <Widget>[

                      IconButton(icon: Icon(Icons.play_circle_outline,),
                        iconSize: 30,
                        onPressed: () =>
                        {
                          sohweNeAhokyereBere1AudioPlay()
                        },),
                      IconButton(
                        icon: Icon(Icons.stop,), iconSize: 30, onPressed: () =>
                      {
                        sohweNeAhokyereBere1AudioStop()
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

                                  child: AutoSizeText("Anuonyam nka Wo, O me Nyankopɔn! Sɛ ɛnyɛ ɔhaw ne amanehunu a etwitware yɛn akwan mu wɔ W'adwuma a yɛyɛ mu a; "
                        "anka yɛbɛyɛ dɛn ahu W'adɔfo ankasa na ɛnyɛ sɔhwɛ a wɔfa mu wɔ ɔdɔ a wɔwɔ ma Wo nti a, anka yɛbɛyɛ dɛn "
                        "ada wɔn a Wo ho sukɔm de wɔn no gyidi gyinabere adi? Wɔn a wɔdɔ Wo no ayɔnkofo te nnisu, wɔn a wɔpere "
                        "hwehwɛ Wo no awerɛkyekyefo nso si apini, na wɔn a wɔtutu mmirika hyia Wo no nso wɔn aduan ne wɔn akoma a "
                                      "atotɔ baha no ase mpoporowa.",
                                    style:  TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),
                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Anyanyade a ɛba me so wɔ W'akwan mu no yɛ me dɛ kɛkɛ, na amanehuna a W'atamfo ma ɛto nnipa wɔ "
                            "W'Asɛmka ne ne pagya mu no som me bo yiye!  Ma nea wo pɛ biara mmra me so wɔ Wo kwan so, O me Nyame, "
                            "na nea ɛfi  Wo dɔ mu Woahyehyɛ ama  me nyinaa nsian ngu me so. Ɛnam W' anuonyame nti! Me kɔn dɔ nea Wo "
                            "dɔ nkutoo, na nea ɛsɔ W'ani pɛ na m'ani sɔ. Wo mu na mede me werɛ ne gyidi nyinaa hyɛ. Ma aboafo nsɔre wɔ Wo saa Som yi mu, "
                                      "wɔn a wɔfata Wo din ne W'ahenni ne wɔ W'okɛseyɛ, sɛnea ɛbɛyɛ a wɔbɛkae me wɔ "
                                      "W'abɔde mu, na wɔama Wo nkonimdi frankaa no so ama ahyeta wɔ W'asase so.",
                                    style: TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),
                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Wowɔ tumi sɛ Woyɛ nea Wopɛ. Onyame foforo biara nni hɔ ka Wo ho, ahokyere mu Boafo, "
                                      "Wo a wote Wo ho so.",
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