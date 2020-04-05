import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

import '../../audio_player.dart';

class SohweBereOnoNeAhummobo extends StatefulWidget {
  @override
  _SohweBereOnoNeAhummoboState createState() => _SohweBereOnoNeAhummoboState();
}

class _SohweBereOnoNeAhummoboState extends State<SohweBereOnoNeAhummobo> {
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
    sohweBere4AudioStop();
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
                    style: TextStyle(fontSize: 25, fontFamily: "NotoSerif"),
                  ),
                  centerTitle: true, elevation: 50, gradient: LinearGradient(colors: [Colors.black,Colors.red[300],]),
                ),
              ),

              body: Scaffold(
                appBar: PreferredSize(
                  preferredSize: Size.fromHeight(40),
                  child: GradientAppBar(title: Text("Sɔhwɛ Bere", style: TextStyle(fontSize: 20, fontFamily: "NotoSerif"),),
                    automaticallyImplyLeading: false, gradient: LinearGradient(colors: [Colors.black,Colors.red[300],]),

                    actions: <Widget>[

                      IconButton(icon: Icon(Icons.play_circle_outline,),
                        iconSize: 30,
                        onPressed: () =>
                        {
                          sohweBere4AudioPlay()
                        },),
                      IconButton(
                        icon: Icon(Icons.stop,), iconSize: 30, onPressed: () =>
                      {
                        sohweBere4AudioStop()
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

                                  child: AutoSizeText("Ɔno ne Ahummɔbɔ no, Adom nyinaa Wura!",
                                    style:  TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),
                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("O Onyankopɔn, me Nyankopɔn! Wohu me, Wonim me. Wo ne me Werɛkyekyefo ne me Guankɔbea. "
                            "Menhwehwɛ obi, na merenhwehwɛ obi gye wo nkutoo; meremfa ɔkwan biara so, "
                            "gye Wo kwan a ɔdɔ wɔ mu no so. Sɛ esum kabii duru me anadwo sum mu mpo, Na maba mu bu a, "
                            "m'aniwa dan de anidaso mmoroso Kyerɛ W'adekyee adom a enni awiei no, Na Ahemanakye nso me kra a abotow no nya nkanyan ne ahoɔden, ɛnam W'ahoɔfɛ ne Wo pɛpɛɛpɛyɛ nkae nti. Nea W'adom ne W'ahummɔbɔ aboa no no, "
                                      "sɛ ɔte sɛ nsu a ɛsosɔw ko ko ko mpo a, ɔbɛyɛ sɛ po a ɛnni awiei, anaa 'atɔm' ketewaa bi mpo a, W'ayamyedɔ a ɛsian no boa no ma ɔbɛdan nsoromma  a ɛhyerɛn shireen.",
                                    style:  TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),
                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Fa W'akoa yi a woagye W'asɛm ato mu yi hyɛ Wo banbɔ ase, O Wo a Woyɛ Honhom kann, Wo a Woma ade ma ɛboro so. "
                                      "Boa no wɔ Wo wiase a Woabɔ yi mu na onnyina pintinn wɔ Wo Ho dɔ mu, na ma ho kwan na anomaa a ne ntaban abubu yi nya baabi nhyɛ wɔ wo honhom pirebuw a ɛwɔ wo daa  nkwa dua no so mu.",
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
