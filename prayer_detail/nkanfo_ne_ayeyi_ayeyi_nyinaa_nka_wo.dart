import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:onyamenkae/audio_player.dart';

class NkanfoNeAyeyiAyeyiNyinaaNkaWo extends StatefulWidget {
  @override
  _NkanfoNeAyeyiAyeyiNyinaaNkaWoState createState() => _NkanfoNeAyeyiAyeyiNyinaaNkaWoState();
}

class _NkanfoNeAyeyiAyeyiNyinaaNkaWoState extends State<NkanfoNeAyeyiAyeyiNyinaaNkaWo> {
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
    nkanfoNeAyeyi2AudioStop();
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
                    style: TextStyle(fontSize: 25),
                  ),
                  centerTitle: true, elevation: 50, gradient: LinearGradient(colors: [Colors.black, Colors.red[300]]),
                ),
              ),
              body: Scaffold(
                appBar: PreferredSize(preferredSize: Size.fromHeight(40.0),
                  child: GradientAppBar(title: Text("Nkanfo Ne Ayeyi", style:  TextStyle(fontSize: 20),),
                    automaticallyImplyLeading: false, gradient: LinearGradient(colors: [Colors.black, Colors.red[300]]),

                    actions: <Widget>[

                      IconButton(icon: Icon(Icons.play_circle_outline,),
                        iconSize: 30,
                        onPressed: () =>
                        {
                          nkanfoNeAyeyi2AudioPlay()
                        },),
                      IconButton(
                        icon: Icon(Icons.stop,), iconSize: 30, onPressed: () =>
                      {
                        nkanfoNeAyeyi2AudioStop()
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

                                  child: AutoSizeText("Ayeyi nyinaa nka Wo, O me Nyankopɔn! Wo a Woyɛ anuonyam ne ahenni, kɛseyɛ ne nnidi "
                                      "nyinaa farebae, "
                        "Tumi ne asase wura, Wo a Wo korɔn na Woyɛ Ɔdomfo, anwonwade ne ahoɔden. Nea Wopɛ n'asɛem no Woma no twiw "
                        "bɛn Wo Po Kɛse no ho, na nea Wopɛ no nso Wodom no ma ohu Wo Din a ɛfi tete nteredee no. Obiara nni ɔsoro "
                        "anaa asase so a obɛtumi asiw W'ahenni Nhehyɛe ho kwan. Ɛfi adebɔ mfiase Wo na Wodi hene wɔ abɔde nyinaa so, "
                            "na Wobɛkɔ so adi hene wɔ abɔde nyinaa so daa. Onyame foforo biara nni hɔ ka Wo ho. Wo ne Otumfo no, Wo na "
                                      "Wo korɔn, Wo na tumi nyinaa yɛ Wo dea. Nyansa nyinaa Wura.",
                                    style: TextStyle(fontSize: 20*_scale),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),

                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("O Awurade, ma Wo nkoa anim nhyerɛn sɛnea ɛbɛyɛ a wɔbɛhu Wo. Tew wɔn akoma mu, sɛnea wɔbɛtwa "
                            "wɔn ani ahwɛ Wo soro akyɛde no na wɔagye Wo Somafo a ɔreda Wo ho nsɛnkyerɛnne ne Wo su Nnɛ Da foforo "
                                      "yi ato mu no adi.",
                                    style: TextStyle(fontSize: 20*_scale),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),
                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Nokware, Wo ne wiase nyinaa Wura. Onyame foforo bi nni hɔ ka Wo ho, Wo a obi nhyɛ Wo na "
                                      "Wodi W'ankasa Wo ho so.",
                                    style:  TextStyle(fontSize: 20*_scale),
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
                                    child: AutoSizeText("Bahá'u'lláh", style: TextStyle(fontSize: 20*_scale, fontWeight: FontWeight.bold),
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