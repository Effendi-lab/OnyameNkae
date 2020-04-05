import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:onyamenkae/audio_player.dart';

class NsraMpaeAbdulBahaDeNo extends StatefulWidget {
  @override
  _NsraMpaeAbdulBahaDeNoState createState() => _NsraMpaeAbdulBahaDeNoState();
}

class _NsraMpaeAbdulBahaDeNoState extends State<NsraMpaeAbdulBahaDeNo> {
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
    nsraMpaeAbdulBahaAudioStop();
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
                  child: GradientAppBar(title: Text("Nsra Mpae", style: TextStyle(fontSize: 20, fontFamily: "NotoSerif"),),
                    automaticallyImplyLeading: false, gradient: LinearGradient(colors: [Colors.black, Colors.red[300]]),

                    actions: <Widget>[

                      IconButton(icon: Icon(Icons.play_circle_outline,),
                        iconSize: 30,
                        onPressed: () =>
                        {
                          nsraMpaeAbdulBahaAudioPlay()
                        },),
                      IconButton(
                        icon: Icon(Icons.stop,), iconSize: 30, onPressed: () =>
                      {
                        nsraMpaeAbdulBahaAudioStop()
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

                                  child: AutoSizeText("(Wɔbɔ saa mpae yi a 'Abdu'l-Bahá daa no adi no wɔ beae a N'amu da. Bio Ankorɛankorɛ nso tumi de "
                                      "yɛ mpaebɔ)",
                                    style:  TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans", fontStyle: FontStyle.italic),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),
                            Divider(height: 15, color: Colors.transparent,),

                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("'Abdu'l-Bahá se: Obiara a ɔde ahobrɛase ne gyidi pi bɛbɔ saa mpae yi no bɛma anigye ne "
                                      "ahosɛpɛw ahyɛ saa Akoa yi akoma ma a ɛbɛyɛ sɛ wahyia no ani ne ani.",
                                    style:  TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans", fontStyle: FontStyle.italic),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),
                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Ɔno na Anuonyam nyinaa wɔ no! O Nyankopɔn, me Nyankopɔn! Mapagyaw me nkotosrɛ nsa yi de kyerɛ Wo "
                            "na mede m'anim abutuw (sie) W'aboboano mfuturu a ɛsen animdefo nyansa ne ayeyi a wɔn a wɔhyɛ Wo anuonyam "
                                      "de ma Wo no.",
                                    style: TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),

                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Dan hwɛ W'akoa, ɔhobrɛaseni ne mmɔbrɔni yi na fa W'ahummɔbɔ aniwa no hwɛ no na fa no hyɛ W'adom "
                                      "a ɛwɔ hɔ daa Po no mu.",
                                    style:  TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),
                            Divider(height: 15, color: Colors.transparent,),

                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Awurade! ɔyɛ W'akoa mmɔbrɔni, de kyewpa a ɛnni kabea kotow srɛ Wo, yɛ deduani wɔ Wo nsam, "
                                      "bɔ Wo mpae denneennen, de ne werɛ ahyɛ Wo mu, de su gyina W'anim, su frɛ Wo se:",
                                    style: TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),
                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("O Awurade, me Nyankopɔn! Ma me W'adom na mede asom W'adɔfo, hyɛ me den wɔ ɔsom a mɛsom Wo no mu, "
                            "na hann a wɔde som wɔ Wo kronkronbea (krokron atenae) hɔ nhyerɛn m'aniakyi na atwe me ahyɛn W'ahemman "
                            "kɛse no mu. Boa me na mapa me ho akyi asom wɔ Wo soro aboboano hɔ na matumi atwe me ho afi biribiara a "
                                      "ɛwɔ Wo kronkronbea hɔ ho.",
                                    style:  TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),
                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Awurade!  Ma mennom W'ahopakyi kurawa no ano; fa n'adurade hyɛ me, na fa me nu ne nsu (po) no mu. "
                            "Ma me nyɛ sɛ mfuturu wɔ W'adɔfonom annanase na ma ho kwan na matumi de me kra abɔ afɔre ama wiase wɔ "
                                      "ananmmɔn a wɔn a Woapaw wɔn no afa so no so, O Anuonyam Wura a wowɔ Soro.",
                                    style:  TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),
                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Saa mpae yi na W'akoa nam so frɛ Wo ahemenakye ne anadwo bere mu. Yɛ n'akoma so abisade ma no, "
                                      "O Awurade! Ma n'akoma mu nhyerɛn, na n'ani nnye, ne hann nhyerɛn, sɛnea ɔbɛsom Wo ne Wo nkoa.",
                                    style: TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),
                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Wo ne Ɔkyɛade, Ahummɔbɔ, Wo a wo nsa gow, Ɔdomfo, Mmɔborɔhunufo, Ɔtema no.",
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