import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:onyamenkae/audio_player.dart';

class NawRuzAyeyiNkaWo extends StatefulWidget {
  @override
  _NawRuzAyeyiNkaWoState createState() => _NawRuzAyeyiNkaWoState();
}

class _NawRuzAyeyiNkaWoState extends State<NawRuzAyeyiNkaWo> {
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
    osomNoNkonimdi1AudioStop();
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
                  child: GradientAppBar(title: Text("Naw-Ruz", style: TextStyle(fontSize: 20, fontFamily: "NotoSerif" ),),
                    automaticallyImplyLeading: false, gradient: LinearGradient(colors: [Colors.black, Colors.red[300]]),


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

                                  child: AutoSizeText("Ayeyi nka Wo, O me Nyankopɔn, sɛ Woahyɛ Naw–Ruz sɛ ɛnyɛ afahyɛ mma wɔn a wɔfaa Akɔnkye mu ɛnam "
                                      "Wo ho dɔ nti na wɔtwee wɔn ho fii nea Wompɛ nyinaa ho. O m’Awurade, ma kwan na Wo dɔ gya ne ɔhyew a Akɔnkye no akanyan "
                                      "ɛnam nea Woahyɛ nti no nnɛre framfram wɔ wɔn mu wɔ Wo Som kwan so, na W’ayeyi ne Wo nkae adi wɔn mu dɛm bere nyinaa.",
                                    style: TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),


                            Divider(height: 15, color: Colors.transparent,),

                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("O m’Awurade, ɛnam sɛ Woama Akɔnkye a Woahyɛ ama wɔn no ayɛ wɔn adurade nti, gye nea wɔn "
                                      "ayɛ no to mu na ɛnnan wɔn honamdua so nkataho nso bio, ɛnam W’adom ne adɔe mmoroso nti. Efisɛ, nnipa nneyɛe "
                                      "nyinaa gyina W’anisɔ, ne nea Wopɛ so. Sɛ nea wantumi amfa Akɔnkye mu no Wobebu no sɛ nea ɔkyeree kɔm de a, "
                                      "saa nnipaban no Wobɛkan no afra wɔn a wɔkyere kɔm fi tete. Na Wohyɛ nso sɛ nea ɔfaa Akɔnkye mu no afom kwan nso "
                                      "de a, na ɛno de saa nnipa ko no wɔbɛkan no afra wɔn a wɔama W’Adiyisɛm Atade (Nkataho) no wɔde dɔte fi aka mu, "
                                      "na wɔapia ayi no atow no akyene akyirikyiri afi saa nkwa Asuten nsu krogyenn no mu.",
                                    style:  TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),


                            Divider(height: 15, color: Colors.transparent,),

                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Wone Nea frankaa no so nkyerɛwee a ese “Wo na ayeyi nka Wo nsa ano nnwuma” no wɔama so, na susudua a ese “Wo na wɔyɛ osetie ma nea Wohyɛ no” ahyeta. Ma Wo nkoa, O m’Awurade nhu Wo saa gyinabea no sɛnea ɛbɛyɛ a wɔbɛnya ntease sɛ nneɛma nyinaa mu nnepa no gyina Wo pɛ ne W’asɛm so, na Wo pɛ ne W’anisɔ mu Woma nneyɛe pa da adi dwumadi biara mu ma egyina "
                            "Wo pɛ anisɔ so, na wohu nso sɛ nnipa nneyɛe nnyinaso fapem gyina ogye a Wogye wɔn nneyɛe pa to mu ne Wo mmaransɛm so. Ma wɔnya saa ntease yi sɛ, biribiara nni hɔ a ebesi wɔ ne W’Ahoɔfɛ no ho kwan saa bere yi a Kristo no bom ka se” “Ahenni nyinaa yɛ Wo dea, O Wo a Woyɛ Honhom no Agya no (Yesu)!” na W’Adamfo (Mahammadu) team ka se: “Anuonyam nka Wo, O Wo a Wone ɔdɔfo Kann no efisɛ Wama W’Ahoɔfɛ no ho ada adagyaw asan akyerɛw"
            "tɔ hɔ ama wɔn a Woapaw wɔn no nea ɛbɛma wɔadu Wo Din Kokuroko adiyisɛm atenae hɔ a ɛno nti nnipa nyinaa twa agyaadwo gye wɔn a wɔatwe wɔn ho afi biribiara ho gye Wo nkotoo ho na wɔadan wɔn anim akyerɛ Nea ɔyɛ Nea ɔda Sɛnea Wote Ankasa fa, Wo su ne Wo ban adi.” "
            ,
                                    style:  TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),

                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("O me Nyankopɔn, Nea Ɔyɛ Wo Mman ne W’ayɔnkofo nnɛ da yi de akɔnkye no aba awiei, afa mu sɛnea Wohyɛ wɔn fi W’atenae hɔ pɛ, pere sɛ wɔbɛsɔ W’ani. Hyehyɛ nea ɛsɛ ma No, ne wɔn nyinaa, a wɔabedu W’anim hɔ pɛɛ saa mmere "
                            "(nna) no mu nea eye nyinaa a Woahyehyɛ wɔ Wo Nwoma no mu. Ɛno de, ma wɔn nsa nka nea ɛho bɛba mfaso ama wɔn saa wiase yi mu ne nea edi akyi no."
              ,
                                    style:  TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ]
                            ),
                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Nokware ni, Wone Nea Onim Ade Nyinaa, Nyansabuakwa.",
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