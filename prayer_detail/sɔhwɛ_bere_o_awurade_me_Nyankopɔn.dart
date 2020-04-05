import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:onyamenkae/audio_player.dart';


class SohweBereOAwuradeMeNyankopon extends StatefulWidget {
  @override
  _SohweBereOAwuradeMeNyankoponState createState() => _SohweBereOAwuradeMeNyankoponState();
}

class _SohweBereOAwuradeMeNyankoponState extends State<SohweBereOAwuradeMeNyankopon> {
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
    sohweBere3AudioStop();
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
                  centerTitle: true, elevation: 50, gradient: LinearGradient(colors: [Colors.black,Colors.red[300],])
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
                         sohweBere3AudioPlay()
                        },),
                      IconButton(
                        icon: Icon(Icons.stop,), iconSize: 30, onPressed: () =>
                      {
                        sohweBere3AudioStop()
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
                        padding: const EdgeInsets.fromLTRB(8.0, 16, 8, 10),
                        child: Column(

                          children: <Widget>[

                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("O Awurade, me Nyankopɔn, m'ahokyere mu guankɔbea! M'amanehunu bere mu nkatabo ne hintabea!"
                                      " Me Banbɔ, m'ahohia ne ankonam bere mu Me hokafo! Me werɛkyekyefo wɔ m'ateetee bere mu, "
                                      "Wɔ m'adwendwen (komm) bere mu m'Adamfo kann! Wo na Woyi m'awerɛhow yaw nyinaa, na Wode me bɔne kyɛ me.",
                                    style:  TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8, wrapWords: true,  ),
                                ),
                              ],
                            ),

                            Divider(height: 15, color: Colors.transparent,),

                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Medan me ho nyinaa kyerɛ Wo; de me koma nyinaa, m'adwene ne me tɛkrɛma kotow srɛ Wo sɛ, "
                            "bɔ me ho ban fi nneyɛe biara a ɛne Wo pɛ bɔ abira (ho), "
                            "wɔ saa bere yi a ɛyɛ Wo honhom mu koroyɛ bere, (wɔ saa bere yi a Wo  homhom koroyɛ reyɛ n'adwuma yi;) "
                                      "na hohoro me ho fi nneyɛe bɔne a ɛbɛsi me kwan sɛ mɛhwehwɛ W'adom dua nwini no a, nkekae ne fi biara nni ho no.",
                                    style:  TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),
                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Hu ahonammerɛwfo mmɔbɔ, O Awurade; sa ayarefo yare, na ma osukɔmhyew no ano nnwo.",
                                    style:  TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),
                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Ma anigye nka akoma a Wo ho dɔ gya afi ase redɛw wɔ mu no, na ma Wo dɔ Honhom ne sunsum no mma ɛnnɛre framfram. "
                            "Fa Wo kronkronyɛ adurade no siesie Wo koroyɛ tintinban no, na fa W'adom ahenkyɛw no hyɛ me. "
                            "Ma m'anim nhyerɛn mfi hann a ɛfi W'adom ne W'ahummɔbɔ mu na boa me na masom wɔ "
                            "W'aponnwa kronkron no anim. Ma m'akoma nya ɔdɔ mmoroso mma W'abɔde, na ma ho kwan na menyɛ Wo mmɔborɔhunu no ho nsɛnkyerɛnne ne W'adom ho agyiraehyɛde, "
                                      "nea ɔma ntease ba W'adɔfo mu, atu ne ho akyɛ Wo, rebɔ Wo nkae ho dawuru, na wapaw ne ho akyi na bere biara n'ani ku nea ɛyɛ Wo dea ho.",
                                    style:  TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),
                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("O Onyame, me Nyankopɔn! mfa Wo mmɔborɔhunu ne W'adom mframa pa no nkwati me, na mma Wo mmoa ne W'adɔe pepeankama no mpare me. "
                            "Ma menhyɛ Wo banbɔ ataban no ase Na tow W'aniwa a ɛbɔ ade nyinaa ho "
                                      "ban no to me so. San me tɛkrɛma na abɔ Wo din akyerɛ amansan sɛ ɛbɛyɛ a me nne begyigye wɔ nnipadɔm mu; "
                                      "na m'anofafa ayi Wo ayɛ daa.",
                                    style: TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),
                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Nokware nyinaa mu no, Wo ne Ɔdomfo, Onuonyamfo no, Otumfo, na Wo na tumi nyinaa ne Wo de no!",
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





    ),
            ),
        );

  }
}




