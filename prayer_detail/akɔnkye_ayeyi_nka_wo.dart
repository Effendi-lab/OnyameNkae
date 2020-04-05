import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:onyamenkae/audio_player.dart';

class AkonkyeAyeyiNkaWo extends StatefulWidget {
  @override
  _AkonkyeAyeyiNkaWoState createState() => _AkonkyeAyeyiNkaWoState();
}

class _AkonkyeAyeyiNkaWoState extends State<AkonkyeAyeyiNkaWo> {
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
    anopa1AudioStop();
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

                  child: GradientAppBar(title: Text("Akɔnkye", style:TextStyle(fontSize: 20, fontFamily: "NotoSerif" )),
                    automaticallyImplyLeading: false, gradient: LinearGradient(colors: [Colors.black, Colors.red[300]]),

                    actions: <Widget>[

                      IconButton(icon: Icon(Icons.play_circle_outline,),
                        iconSize: 30,
                        onPressed: () =>
                        {
                          akonkye1AudioPlay()
                        },),
                      IconButton(
                        icon: Icon(Icons.stop,), iconSize: 30, onPressed: () =>
                      {
                        akonkye1AudioStop()
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

                                  child: AutoSizeText("Ayeyi nka Wo, O Awurade me Nyankopɔn! Menam saa Yikyerɛ a ɛnam so nti sum adan hann, na Wɔasi "
                        "W'asɔredan a Wodi mu akɔneaba na, Woada Kyerɛwsɛm no adi na wɔabue Asɛm a wɔtrɛw mu no so kotow srɛ wo "
                        "sɛ sian nea ɛbɛtumi ama me ne wɔn a wɔka me ho na yɛatu aba sorosoro w'anuonyam a ɛboro ade nyinaa "
                        "so no mu na ɛbɛhohoro yɛn ho afi akyinnye nkekae biara a asi adwemmɔnefo kwan ma wɔntumi nhyɛn Wo koroyɛ "
                                      "ntamadan no mu no gu yɛn so.",
                                    style:  TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),

                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("O m'Awurade me ne nea Waso Wo dɔ ayamye ahama no ne W'ahummɔbɔ ne W'adom atade ano no mu. "
                                      "Hyira wiase yi ne wiase a ɛbɛba mu nnepa so ma me ne m'adɔfonom. Saa de a ma wɔn Akyɛde a Ahintaw (ahinta akyɛde No) a Woahyira so ama atitiriw a Woapaw wɔn wɔ Woabɔde mu no.",
                                    style: TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),


                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Saa bere yi mu, O m'Awurade yɛ bere a Woahyɛ ama Wo nkoa sɛ wɔnkyene kɔm. Nhyira nka nea ɛsane "
                            "Wo nti ɔde n'akoma nyinaa yɛ akɔnkye na ɔtwe ne ho fi ade nyinaa gye Wo nkutoo ho. Boa me na boa wɔn, "
                                      "O m'Awurade, ma yɛnyɛ osetie na yɛnni Wo nhyehyɛe so. Nokware ni, Wowɔ tumi sɛ Woyɛ nea Wopɛ.",
                                    style: TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),

                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Onyame foforo bi nni hɔ ka Wo ho, Onimade nyinaa, Nyansa nyinaa wura. Ayeyi nyinaa nka Nyankopɔn, "
                                      "wiase nyinaa Wura.",
                                    style:  TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans" ),
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
                                    child: AutoSizeText("Bahá'u'lláh", style: TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans", fontWeight: FontWeight.bold),
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