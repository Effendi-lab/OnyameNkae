import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:onyamenkae/audio_player.dart';

class OhyeMpaeAdatam extends StatefulWidget {
  @override
  _OhyeMpaeAdatamState createState() => _OhyeMpaeAdatamState();
}

class _OhyeMpaeAdatamState extends State<OhyeMpaeAdatam> {
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
    ohyeMpaeTiatiaAudioStop();
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
                child: GradientAppBar(
                  title: Text(
                    "Onyame Nkae",
                    style:  TextStyle(fontSize: 25, fontFamily: "NotoSerif"),
                  ),
                  centerTitle: true, elevation: 50, gradient: LinearGradient(colors: [Colors.black, Colors.red[300]]),
                ), preferredSize: Size.fromHeight(50.0),
              ),
              body: Scaffold(
                appBar: PreferredSize(
                  child: GradientAppBar(title: Text("Ɔhyɛ Mpae", style: TextStyle(fontSize: 20, fontFamily: "NotoSerif"),),
                    automaticallyImplyLeading: false, gradient: LinearGradient(colors: [Colors.black, Colors.red[300]]),

                    actions: <Widget>[

                      IconButton(icon: Icon(Icons.play_circle_outline,),
                        iconSize: 30,
                        onPressed: () =>
                        {
                          ohyeMpaeAdatamAudioPlay()
                        },),
                      IconButton(
                        icon: Icon(Icons.stop,), iconSize: 30, onPressed: () =>
                      {
                        ohyeMpaeAdatamAudioStop()
                      },)
                    ],
                    centerTitle: true,


                  ), preferredSize: Size.fromHeight(40.0),
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

                                  child: AutoSizeText("ƆHYƐ MPAE ADATAM",
                                    style:  TextStyle(fontSize: 20*_scale, fontWeight: FontWeight.bold, fontFamily: "NotoSerif"),
                                    textAlign: TextAlign.center, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),
                            Divider(height: 15, color: Colors.transparent,),

                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Ɛwɔ sɛ wɔbɔ saa mpea yi dabiara anɔpa, owigyinae ne anwummere.",
                                    style: TextStyle(fontSize: 20*_scale, fontStyle: FontStyle.italic, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),
                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Obiara a ɔpɛ sɛ ɔbɔ mpae yi no bɛhohoro ne nsa. Bere a ɔgu so rehohoro no ɔnka se:",
                                    style:  TextStyle(fontSize: 20*_scale,
                                        fontStyle: FontStyle.italic, fontFamily: "Notosans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                )
                              ],
                            ),
                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Hyɛ me nsa mu den, O Me nyankopɔn sɛnea ɛbɛtumi asɔ Wo Nwoma no mu pintinn, na wim atumfo "
                                      "annya so tumi. San bɔ ho ban na ankɔsɔ nea ɛnyɛ ne de mu. Nokware ni, Woyɛ Okokuroko, Woyɛ Tumi Wura.",
                                    style: TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),
                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Bere a ɔrehohoro n'anim no ɔnka se:",
                                    style: TextStyle(fontSize: 20*_scale, fontStyle: FontStyle.italic, fontFamily: "Notosans"
                                         ),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                )
                              ],
                            ),
                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Madan m'ani ahwɛ Wo, O m'Awurade! Ma W'anim hann no nhyerɛn wɔ so. "
                                      "Bɔ ho ban na annan amfi Wo so ankɔhwɛ obi foforo biara.",
                                    style: TextStyle(fontSize: 20*_scale, fontFamily: "Notosans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),

                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Afi ɔnsɔre nnyinaa hɔ, mfa n'ani nkyerɛ beae a Bahá'u'lláh Amu da no "
                                      "(Ayeyi Beae hɔ…..Qiblih….. mekyerɛ Bahji Akká) na ɔnka se:",
                                    style:  TextStyle(fontSize: 20*_scale,
                                        fontStyle: FontStyle.italic, fontFamily: "Notosans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                )
                              ],
                            ),

                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Onyankopɔn ma ɛda adi pefee sɛ Nyame foforo biara nni hɔ ka Ne ho. Ahenni mu Adiyisɛm ne "
                            "abɔde nyinaa yɛ Ne dea. Nokwarem, Ɔno na Wada Adiyisɛm Asuten no adi Nea ɔbɔɔ  nkɔmmɔ wɔ Sinai, "
                            "na ɛnam Ne so ɔsorosoro Hann no atumi ahyerɛn, na Lote- Dua no a Wɔkwati  no a (wɔpa ho a) ɛnyɛ "
                            "yiye no akasa, na ɛnam Ne  so wɔapae mu afrɛ wɔn a wɔwɔ ɔsoro ne asase nyinaa so se: "
                                      "“Hwɛ, Nea Ade Nyinaa yɛ Ne Dea no aba. Asase ne Ɔsoro, anuonyam ne tumi yɛ Nyankopɔn amansan nyinaa Awurade no, Nea Ɔsoro ne asase so ahenni yɛ ne de no!”",
                                      style: TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),

                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Afei, ɔmmɔ ne mu ase mfa ne nsa ngu ne kotodwe so, nka se:",
                                    style: TextStyle(fontSize: 20*_scale,  fontStyle: FontStyle.italic, fontFamily: "Notosans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                )
                              ],
                            ),

                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Wo kɛseyɛ korɔn sen ayeyi a me ne afoforo a wɔka me ho de ma wo, ɛboro me nkyerɛkyerɛmu ne nea "
                                      "wɔn a wɔwɔ ɔsoro ne asase so nyinaa bɛka afa Wo ho!",
                                    style:  TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),

                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Afei, ɔnsɔre nnyina hɔ, ntrɛw ne nsam nkyerɛ n'anim wɔ ɔsoro na ɔnka se:",
                                    style: TextStyle(fontSize: 20*_scale,  fontStyle: FontStyle.italic, fontFamily: "Notosans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                )
                              ],
                            ),

                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("O me Nyankopɔn, nni nea ɔde nkotosrɛ asɔ W'adom ne W'ahummɔbɔ ano mu resrɛ Wo hɔ ade no hwammɔ O, "
                                      "Wo a wowɔ ahummɔbɔ sen ahummɔbɔfo nyinaa!",
                                    style:  TextStyle(fontSize: 20*_scale, fontFamily: "Notosans" ),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),

                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Afei ɔntena  ase, na ɔnka se:",
                                    style:  TextStyle(fontSize: 20*_scale, fontStyle: FontStyle.italic, fontFamily: "Notosans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                )
                              ],
                            ),

                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Medi Wo nkabom ne Wo koroyɛ ho adanse sɛ Wo ne Nyankopɔn na nyame foforo biara nni hɔ ka wo ho.",
                                    style: TextStyle(fontSize: 20*_scale, fontFamily: "Notosans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),

                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Nokware ni Woada W'asem adi, adi W'apam no adi no ho nokware, (Wahyɛ W'apam, no ma) abue "
                                      "W'adom pon no tɛtrɛɛ ato hɔ ama wɔn a wɔwɔ ɔsoro ne asase so nyinaa.",
                                    style: TextStyle(fontSize: 20*_scale, fontFamily: "Notosans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),

                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Nhyira ne asomdwoe, nkyia ne anuonyam nka W'adɔfonom; wɔn a wiase nsakrae ne apɛde nsii wɔn "
                            "kwan sɛ wɔbɛdan wɔn akyi akyerɛ Wo, na wɔama biribiara apare wɔn ɛfisɛ  wɔwɔ anidaso sɛ wɔn nsa bɛka "
                                      "Wo mu nnepa no. Nokware ni, Wo ne Daa Bɔnefafiri, Wo a wo Nsam gow.",
                                    style: TextStyle(fontSize: 20*_scale, fontFamily: "Notosans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),

                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Sɛ obi mpɛ sɛ ɔka nsɛm tenten yi a ɔnka eyi;",
                                    style: TextStyle(fontSize: 20*_scale, fontStyle: FontStyle.italic, fontFamily: "NotoSans" ),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                )
                              ],
                            ),

                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Nyankopɔn ma ɛda adi pefee sɛ Nyame foforo bi nni hɔ ka Ne ho, Ahohia bere mu Boafo, Nea ɔnnan obi. Saa ara na bere a ɔte hɔ no ɔtumi ka se: Medi Wo nkabom ne Wo koroyɛ ho adanse sɛ Wo nko "
                                      "ara ne Nyankopɔn, na Nyame foforo biara nni hɔ ka Wo ho.",
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