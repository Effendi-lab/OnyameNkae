import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:onyamenkae/audio_player.dart';

class OhyeMpaeTenten extends StatefulWidget {
  @override
  _OhyeMpaeTentenState createState() => _OhyeMpaeTentenState();
}

class _OhyeMpaeTentenState extends State<OhyeMpaeTenten> {
  double _prevScale;
  double _scale;

  @override
  void initState() {
    super.initState();
    _prevScale = _scale = 1.0;
  }

  @override
  void dispose() {
    super.dispose();
    ohyeMpaeTentenAudioStop();
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
              centerTitle: true, gradient: LinearGradient(colors: [Colors.black, Colors.red[300]]),
              elevation: 50,
            ),
          ),
          body: Scaffold(
            appBar: PreferredSize( preferredSize: Size.fromHeight(40.0),
              child: GradientAppBar(
                title: Text(
                  "Ɔhyɛ Mpae",
                  style:  TextStyle(fontSize: 20, fontFamily: "NotoSerif"),
                ),
                automaticallyImplyLeading: false, gradient: LinearGradient(colors: [Colors.black, Colors.red[300]]),
                actions: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.play_circle_outline,
                    ),
                    iconSize: 30,
                    onPressed: () => {ohyeMpaeTentenAudioPlay()},
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.stop,
                    ),
                    iconSize: 30,
                    onPressed: () => {ohyeMpaeTentenAudioStop()},
                  )
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
                              child: AutoSizeText(
                                "ƆHYƐ MPAE TENTEN",
                                style: TextStyle(
                                        fontSize: 20 * _scale,
                                        fontWeight: FontWeight.bold, fontFamily: "NotoSerif"),
                                textAlign: TextAlign.center,
                                maxFontSize: 56,
                                minFontSize: 8,
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          height: 15,
                          color: Colors.transparent,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: AutoSizeText(
                                "Nnɔnhwere aduonu-anan biara ntam no, bɔ Saa mpae yi prɛko pɛ.",
                                style: TextStyle(
                                        fontSize: 20 * _scale, fontFamily: "NotoSans", fontStyle: FontStyle.italic
                                        ),
                                textAlign: TextAlign.start,
                                maxFontSize: 56,
                                minFontSize: 8,
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          height: 15,
                          color: Colors.transparent,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: AutoSizeText(
                                "Obiara a ɔpɛ sɛ ɔbɔ saa mpae yi no nsɔre nnyina hɔ, nnan n'ani nkyerɛ Nyankopɔn, "
                                "na ɔgyina hɔ saa no, ɔnhwɛ nifa, Na afei benkum, te sɛnea ɔretwɛn n'Awurade ahummɔbɔ, "
                                "Nea Ɔyɛ Mmɔborɔhunufo no, Ɔtema no.",
                                style: TextStyle(
                                  fontSize: 20 * _scale,
                                    fontFamily: "NotoSans", fontStyle: FontStyle.italic
                                ),
                                textAlign: TextAlign.start,
                                maxFontSize: 56,
                                minFontSize: 8,
                              ),
                            )
                          ],
                        ),
                        Divider(
                          height: 15,
                          color: Colors.transparent,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: AutoSizeText(
                                "Afei ɔnka se:",
                                style:  TextStyle(
                                  fontSize: 20 * _scale,
                                    fontFamily: "NotoSans", fontStyle: FontStyle.italic
                                ),
                                textAlign: TextAlign.start,
                                maxFontSize: 56,
                                minFontSize: 8,
                              ),
                            )
                          ],
                        ),
                        Divider(
                          height: 15,
                          color: Colors.transparent,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: AutoSizeText(
                                "O Wo a Woyɛ din nyinaa Wura ne ɔsorosoro Yɛfo! Menam wɔn a wɔyɛ Adekyee ma Wo Tebea wɔnnhu no, "
                                "Wo a wo Korɔn sen biribiara, Anuonyam nyinaa Wura no so kotow srɛ Wo sɛ ma me mpae nyɛ ogya a ɛbɛhye "
                                "nkatanim a ɛmma menhu W'ahoɔfɛ no, na ɛnyɛ hann a ɛbɛdi m'anim de me aba W'Anim tɛtrɛɛ te sɛ Po no.",
                                style:
                                        TextStyle(fontSize: 20 * _scale,  fontFamily: "NotoSans"),
                                textAlign: TextAlign.start,
                                maxFontSize: 56,
                                minFontSize: 8,
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          height: 15,
                          color: Colors.transparent,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: AutoSizeText(
                                "Afei ɔmma ne nsa so wɔ ahobrɛase mu nkyerɛ Nyankopɔn- nhyira ne ayeyi nka No-na ɔnka se:",
                                style: TextStyle(
                                  fontSize: 20 * _scale,
                                    fontFamily: "NotoSans", fontStyle: FontStyle.italic
                                ),
                                textAlign: TextAlign.start,
                                maxFontSize: 56,
                                minFontSize: 8,
                              ),
                            )
                          ],
                        ),
                        Divider(
                          height: 15,
                          color: Colors.transparent,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: AutoSizeText(
                                "O Wo a woyɛ wiasefo Apɛde ne amanaman Dɔfo! Wohu sɛ madan m'ani rehwɛ Wo, na mapa me ho akyi "
                                "afi biribiara ho gye Wo nkutoo na masɔ W'ahama a ɛho mpopoe awosow abɔde nyinaa no mu. Meyɛ W'akoa, "
                                "O m'Awurade ne W'akoa ba. Hwɛ me megyina hɔ ayɛ krado sɛ mɛyɛ W'apɛde ne nea Wohwehwɛ, na magyae "
                                "biribiara akyi di gye sɛ nea ɛsɔ W'ani nkutoo. Menam W'ahummɔbɔ Po no ne Wo adom Adekyee-Nsoromma no so kotow "
                                    "srɛ Wo sɛ fa W'akoa yɛ nea Wopɛ ne nea eye ma Wo, ɛsane Wo tumi a ɛnni kabea ne ayeyi nti! Biribiara a Wobɛda"
                                    " no adi no yɛ nea m'akoma pɛ ne nea me kra pere hwehwɛ. O Nyankopɔn, me Nyankopɔn, nhwɛ m'anidaso ne me nneyɛe, "
                                    "na mmom hwɛ Wo pɛ a abunkam afa ɔsoro ne asase so. Wɔ Wo Din Kokuroko no nti, "
                                "O Wo a woyɛ amanaman nyinaa Awurade! mapere hwehwɛ nea Wo pɛ nko ara na medɔ nea W'ani gye ho nkutoo.",
                                style:
                                        TextStyle(fontSize: 20 * _scale, fontFamily: "NotoSans"),
                                textAlign: TextAlign.start,
                                maxFontSize: 56,
                                minFontSize: 8,
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          height: 15,
                          color: Colors.transparent,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: AutoSizeText(
                                "Afei ɔmmu nkotodwe na ɔmfa ne moma mmɔ fam na ɔnka se:",
                                style: TextStyle(
                                  fontSize: 20 * _scale,
                                    fontFamily: "NotoSans", fontStyle: FontStyle.italic
                                ),
                                textAlign: TextAlign.start,
                                maxFontSize: 56,
                                minFontSize: 8,
                              ),
                            )
                          ],
                        ),
                        Divider(
                          height: 15,
                          color: Colors.transparent,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: AutoSizeText(
                                "Wo kɛseyɛ korɔn sen nkyerɛkyerɛmu ne ntease a obiara wɔ fa Wo ho gye Wo ankasa.",
                                style:
                                        TextStyle(fontSize: 20 * _scale, fontFamily: "NotoSans"),
                                textAlign: TextAlign.start,
                                maxFontSize: 56,
                                minFontSize: 8,
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          height: 15,
                          color: Colors.transparent,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: AutoSizeText(
                                "Afei, ɔnsɔre nnyina hɔ na ɔnka se:",
                                style:  TextStyle(
                                  fontSize: 20 * _scale,
                                    fontFamily: "NotoSans", fontStyle: FontStyle.italic
                                ),
                                textAlign: TextAlign.start,
                                maxFontSize: 56,
                                minFontSize: 8,
                              ),
                            )
                          ],
                        ),
                        Divider(
                          height: 15,
                          color: Colors.transparent,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: AutoSizeText(
                                "O m'Awurade, ma me mpae nyɛ sɛ nkwa nsuten (nsu a ɛto see) na matɛna afebɔɔ (ama manyin akyɛ) "
                                    "sɛnea W'ahenni tim hɔ daa ara pɛ, na mabɔ Wo Din wɔ Wo wiase ahorow no mu.",
                                style:
                                        TextStyle(fontSize: 20 * _scale, fontFamily: "NotoSans"),
                                textAlign: TextAlign.start,
                                maxFontSize: 56,
                                minFontSize: 8,
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          height: 15,
                          color: Colors.transparent,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: AutoSizeText(
                                "Afei ɔnsan mpagyaw ne nsa wɔ ahobrɛease mu nka se:",
                                style: TextStyle(
                                  fontSize: 20 * _scale,
                                    fontFamily: "NotoSans", fontStyle: FontStyle.italic
                                ),
                                textAlign: TextAlign.start,
                                maxFontSize: 56,
                                minFontSize: 8,
                              ),
                            )
                          ],
                        ),
                        Divider(
                          height: 15,
                          color: Colors.transparent,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: AutoSizeText(
                                "O, Wo a sɛ obi tew ne ho fi Wo ho a akoma ne akra nane na ɛnam Wo dɔ a ɛte sɛ ogya no atɔ "
                                "wiase redɛre framfram! Mekotow srɛ Wo wɔ Wo Din a wonam so abrɛ wiase nyinaa ase no sɛ, mfa nea "
                                    "Wowɔ no nkame me, O Wo a wodi hene wɔ adasamma nyinaa so.",
                                style:
                                        TextStyle(fontSize: 20 * _scale, fontFamily: "NotoSans"),
                                textAlign: TextAlign.start,
                                maxFontSize: 56,
                                minFontSize: 8,
                              ),
                            ),
                          ],
                        ),

                        Divider(
                          height: 15,
                          color: Colors.transparent,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: AutoSizeText(
                                "O m'Awurade, Wohu saa ɔhɔho (ɔmanfrani) yi a ɔde ahopere rekɔ n'atenae a ɛkorɔn wɔ "
                                    "W'ahenni pata no ase na ɛwɔ W'ahummɔbɔ ahye so no; nea wafom yi rehwehwɛ Wo bɔnefafiri po no, "
                                    "saa mmɔbrɔwa yi, W'anuonyam atenae, saa ohiani yi W'ahonya ti.",
                                style:
                                    TextStyle(fontSize: 20 * _scale, fontFamily: "NotoSans",),
                                textAlign: TextAlign.start,
                                maxFontSize: 56,
                                minFontSize: 8,
                              ),
                            ),
                          ],
                        ),

                        Divider(
                          height: 15,
                          color: Colors.transparent,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: AutoSizeText(
                                "Wowɔ tumi sɛ Woma nea Wopɛ biara ba mu.  Medi adanse sɛ ɛsɛ sɛ wɔyi Woayɛ wɔ Wo nnwuma nyinaa ho, "
                                    "na wɔdi nea Wohyɛ so, na biribiara nsi Wo pɛ ho kwan.",
                                style:
                                    TextStyle(fontSize: 20 * _scale, fontFamily: "NotoSans"),
                                textAlign: TextAlign.start,
                                maxFontSize: 56,
                                minFontSize: 8,
                              ),
                            ),
                          ],
                        ),

                        Divider(
                          height: 15,
                          color: Colors.transparent,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: AutoSizeText(
                                "Afei ɔmma ne nsa so, na ɔmmɔ Din Kɛse mpɛn abiɛsa.",
                                style: TextStyle(
                                  fontSize: 20 * _scale,
                                    fontFamily: "NotoSans", fontStyle: FontStyle.italic
                                ),
                                textAlign: TextAlign.start,
                                maxFontSize: 56,
                                minFontSize: 8,
                              ),
                            )
                          ],
                        ),



                        Divider(
                          height: 15,
                          color: Colors.transparent,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: AutoSizeText(
                                "Afei ɔmmɔ ne mu ase mfa ne nsa nsosɔ ne kotodwe wɔ Nyankopɔn anim – nhyira ne ayeyi nka "
                                    "No-na ɔnka se:",
                                style: TextStyle(
                                      fontSize: 20 * _scale,
                                    fontFamily: "NotoSans", fontStyle: FontStyle.italic
                                    ),
                                textAlign: TextAlign.start,
                                maxFontSize: 56,
                                minFontSize: 8,
                              ),
                            )
                          ],
                        ),


                        Divider(
                          height: 15,
                          color: Colors.transparent,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: AutoSizeText(
                                "Wohu, O me Nyankopɔn, sɛnea me sunsum apusuw m'akwaa ne me nipadua ɛsane pɛ a ɛpɛ sɛ ɛsom Wo, "
                                "sɛnea ɛrepere sɛ ɛbɛkae atomtom Wo; sɛnea ɛdi adanse fa nea Wo Mmaransɛm Tɛkrɛma no dii ho adanse wɔ "
                                "W'asɛm ahenni ne Wo nimdee ahemman mu. Wɔ saa tebea yi mu mpo, O  m'Awurade, medɔ sɛ mekotow asrɛ Wo "
                                "mu nnepa nyinaa, sɛnea ɛbeyɛ a mɛda me hia adi na mama W'adom ne W'ahonya ayɛ kɛse, me mmerɛwyɛ ho ada "
                                    "hɔ na ama W'ahoɔden ne Wo tumi ada adi.",
                                style:
                                        TextStyle(fontSize: 20 * _scale, fontFamily: "NotoSans"),
                                textAlign: TextAlign.start,
                                maxFontSize: 56,
                                minFontSize: 8,
                              ),
                            ),
                          ],
                        ),



                        Divider(
                          height: 15,
                          color: Colors.transparent,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: AutoSizeText(
                                "Afei ɔnsɔre nnyina hɔ mma ne nsa so mpɛn abien wɔ ahobrɛase mu nka se:",
                                style:  TextStyle(
                                      fontSize: 20 * _scale,
                                        fontFamily: "NotoSans", fontStyle: FontStyle.italic
                                    ),
                                textAlign: TextAlign.start,
                                maxFontSize: 56,
                                minFontSize: 8,
                              ),
                            )
                          ],
                        ),


                        Divider(
                          height: 15,
                          color: Colors.transparent,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: AutoSizeText(
                                "Nyame foforɔ biara nni hɔ ka Wo ho, Otumfo, Wo a wo nsam gow. Nyame foforo biara nni hɔ ka Wo ho, "
                                    "Wo a woma ɛyɛ hɔ fi mfiase kɔsi awiei.",
                                style:
                                        TextStyle(fontSize: 20 * _scale, fontFamily: "NotoSans",),
                                textAlign: TextAlign.start,
                                maxFontSize: 56,
                                minFontSize: 8,
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          height: 15,
                          color: Colors.transparent,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: AutoSizeText(
                                "O Nyankopɔn, me Nyankopɔn! Wo fafri ama me akokuduru, na W'ahummɔbɔ ama m'ahoɔden, "
                                "Wo frɛ no akanyan me na W'adom no apagyaw me de me aba nkyɛn.Hena koraa ne me a anka mɛtwiw "
                                "abɛgyina Wo nkyɛn, Wo kuropɔn no aboboano, anaa mede m'ani bɛto Wo akanea a ɛrehyerɛn afi sorosoro "
                                "Wo pɛ mu no?  O m'Awurade, Wohu ɔwerɛhowni yi sɛ ɔrebɔ W'adom pon no mu ne ɔkra a wɔatow no asaworam yi "
                                    "sɛ ɔrepere hwehwɛ daa nkwa nsuten a ɛfi W'adom nsam no. Wo na wohyɛ a ɛyɛ hɔ bere biara, O Wo a Woyɛ "
                                    "din nyinaa Wura; na mede ne sɛ mɛgye Wo pɛ ato mu, O Ɔsorosoro yɛfo!",
                                style:
                                        TextStyle(fontSize: 20 * _scale, fontFamily: "NotoSans"),
                                textAlign: TextAlign.start,
                                maxFontSize: 56,
                                minFontSize: 8,
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          height: 15,
                          color: Colors.transparent,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: AutoSizeText(
                                "Afei ɔmma ne nsa so mpɛn abiɛsa nka se:",
                                style:  TextStyle(
                                  fontSize: 20 * _scale,
                                        fontFamily: "NotoSans", fontStyle: FontStyle.italic
                                ),
                                textAlign: TextAlign.start,
                                maxFontSize: 56,
                                minFontSize: 8,
                              ),
                            )
                          ],
                        ),
                        Divider(
                          height: 15,
                          color: Colors.transparent,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: AutoSizeText(
                                "Onyankopɔn yɛ kɛse kyɛn ɔkɛse biara!",
                                style:
                                        TextStyle(fontSize: 20 * _scale, fontFamily: "NotoSans"),
                                textAlign: TextAlign.start,
                                maxFontSize: 56,
                                minFontSize: 8,
                              ),
                            ),
                          ],
                        ),

                        Divider(
                          height: 15,
                          color: Colors.transparent,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: AutoSizeText(
                                "Afei ɔmmu nkotodwe, mfa ne moma mmɔ fam nka se:",
                                style: TextStyle(
                                      fontSize: 20 * _scale,
                                        fontFamily: "NotoSans", fontStyle: FontStyle.italic
                                    ),
                                textAlign: TextAlign.start,
                                maxFontSize: 56,
                                minFontSize: 8,
                              ),
                            )
                          ],
                        ),


                        Divider(
                          height: 15,
                          color: Colors.transparent,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: AutoSizeText(
                                "Wo kɛseyɛ nti no, wɔn a wɔbɛn Wo no ayeyi ntumi nnuru Wo nkyɛn wɔ nokware mu na abɛn W'abobowano. "
                            "Megye to mu sɛ wɔatew Wo ho sen ade nyinaa na Wo kronkronyɛ boro din nyinaa so. Onyame foforo bi nni hɔ "
                                    "ka Wo ho, Okokuroko, Auonyam nyinaa Ti.",
                                style:
                                    TextStyle(fontSize: 20 * _scale, fontFamily: "NotoSans",),
                                textAlign: TextAlign.start,
                                maxFontSize: 56,
                                minFontSize: 8,
                              ),
                            ),
                          ],
                        ),



                        Divider(
                          height: 15,
                          color: Colors.transparent,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: AutoSizeText(
                                "Afei ɔntena ase na ɔnka se:",
                                style: TextStyle(
                                      fontSize: 20 * _scale,
                                        fontFamily: "NotoSans", fontStyle: FontStyle.italic
                                    ),
                                textAlign: TextAlign.start,
                                maxFontSize: 56,
                                minFontSize: 8,
                              ),
                            )
                          ],
                        ),

                        Divider(
                          height: 15,
                          color: Colors.transparent,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: AutoSizeText(
                                "Medi adanse fa nea abɔde nyinaa ne ɔsoro Ahoteefo ne paradise Kronkrobea Mufo no, wɔn akyi no "
                                "Tɛkrɛma Kɛse no ankasa a ɛfi anuonyam nyinaa Ahyiaeso no, sɛ Wo yɛ Nyankopɔn, na nyame foforo biara "
                                "nni hɔ ka Wo ho, na nea wɔada no adi no yɛ Ahintasɛm Anwonwade nsɛnkyerɛnne a ɛsom bo, na ɛnam Ne so "
                                    "na wɔaka akyerɛwsɛm Yɛ - Hɔ anwon abom.",
                                style:
                                    TextStyle(fontSize: 20 * _scale, fontFamily: "NotoSans",),
                                textAlign: TextAlign.start,
                                maxFontSize: 56,
                                minFontSize: 8,
                              ),
                            ),
                          ],
                        ),


                        Divider(
                          height: 15,
                          color: Colors.transparent,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: AutoSizeText(
                                "Megye to mu sɛ Ɔno ne Din na Ɔsorosoro Hene de kyerɛwdua si so dua, na Ɔno na wɔabɔ ne din wɔ "
                                    "Nyankopɔn Nwoma no mu no, Awurade a ɔte Ahennwa so wɔ ɔsoro ne fam.",
                                style:
                                    TextStyle(fontSize: 20 * _scale, fontFamily: "NotoSans",),
                                textAlign: TextAlign.start,
                                maxFontSize: 56,
                                minFontSize: 8,
                              ),
                            ),
                          ],
                        ),


                        Divider(
                          height: 15,
                          color: Colors.transparent,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: AutoSizeText(
                                "Afei ɔnsɔre nnyina hɔ nka se:",
                                style:  TextStyle(
                                      fontSize: 20 * _scale,
                                    fontFamily: "NotoSans", fontStyle: FontStyle.italic
                                    ),
                                textAlign: TextAlign.start,
                                maxFontSize: 56,
                                minFontSize: 8,
                              ),
                            )
                          ],
                        ),



                        Divider(
                          height: 15,
                          color: Colors.transparent,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: AutoSizeText(
                                "O Awurade Woyɛ adebɔ nyinaa farebae nea yɛhu ne nea yɛnnhu nyinaa Wura! Wohu me nnisu ne mahomegu, "
                                "na wote mapisini ne magyadowtwa ne abooboo a medi wɔ m'akoma mu.Wo tumi nti! Me mfomso asi me kwan sɛ "
                                "mɛtwiw abɛn Wo; na me bɔne ama me ne Wo kronkronbea hɔ ntam kwan aware. O m'Awurade,Wo dɔ ama m'ayɛ ɔdefo; "
                                "na twe a matwe me ho afi Wo ho no ama masɛe; kwantenten a ada me Ne Wo ntam no ama magyigya. Menam W'ananmɔn a "
                                    "woretu wɔ sare yi so no ne asɛnfua a ɛka se: Me ni, Me ni  a Wɔn a Woapaw wɔn no aka wɔ wiase mmaa nyinaa yi ne "
                                    "W'Adiyisɛm no ho home ɛne Wo Somafo no mmae no ho mframa a ɛbɔ brɛoo no sɛ ma "
                                    "ho kwan na matumi ahu W'ahoɔfɛ na madi nea ɛwɔ Wo Nwoma no mu so.",
                                style:
                                    TextStyle(fontSize: 20 * _scale, fontFamily: "NotoSans",),
                                textAlign: TextAlign.start,
                                maxFontSize: 56,
                                minFontSize: 8,
                              ),
                            ),
                          ],
                        ),


                        Divider(
                          height: 15,
                          color: Colors.transparent,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: AutoSizeText(
                                "Afei ɔmma ne nsa so na ɔmmɔ Din Kɛse no mpɛn abiɛsa, ɔmmɔ ne mu sae mfane nsa nsɔ ne kotodwe na "
                                    "ɔnka se:",
                                style: TextStyle(
                                      fontSize: 20 * _scale,
                                    fontFamily: "NotoSans", fontStyle: FontStyle.italic
                                    ),
                                textAlign: TextAlign.start,
                                maxFontSize: 56,
                                minFontSize: 8,
                              ),
                            )
                          ],
                        ),


                        Divider(
                          height: 15,
                          color: Colors.transparent,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: AutoSizeText(
                                "Ayeyi nka Wo, O me Nyankopɔn, sɛ Woaboa me ama makae Wo na mayi Woayɛ, na Woada nea ɔyɛ Wo "
                                "Daa Asuten nsɛnkyerɛnne no adi akyerɛ me, na Woama makotow wɔ Wo Kɛseyɛ anim na Woama mabrɛ me ho ase "
                                    "wɔ Wo Nyameti anim, na ama magye nea Wo Tɛkrɛma Kɛse no aka no atom.",
                                style:
                                    TextStyle(fontSize: 20 * _scale, fontFamily: "NotoSans",),
                                textAlign: TextAlign.start,
                                maxFontSize: 56,
                                minFontSize: 8,
                              ),
                            ),
                          ],
                        ),

                        Divider(
                          height: 15,
                          color: Colors.transparent,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: AutoSizeText(
                                "Afei ɔnsɔre nnyina na ɔnka se:",
                                style:  TextStyle(
                                      fontSize: 20 * _scale,
                                        fontFamily: "NotoSans", fontStyle: FontStyle.italic
                                    ),
                                textAlign: TextAlign.start,
                                maxFontSize: 56,
                                minFontSize: 8,
                              ),
                            )
                          ],
                        ),


                        Divider(
                          height: 15,
                          color: Colors.transparent,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: AutoSizeText(
                                "O Nyankopɔn, me Nyankopɔn, m'akyi akyea ɛfisɛ me bɔne ayɛ adesoa ama me, na masoɔden asɛe me. "
                                "Sɛ medwen m'amumɔyɛ ne W'adɔe ho a, m'akoma nane wɔ me mu na me mogya huru wɔ me ntin mu. Ɛsane "
                                "W'ahoɔfɛ nti, O Wo a wiase pere hwehwɛ Wo! Fɛre si me kwan sɛ mɛpagyaw m'ani ahwɛ Wo na ɛyɛ m'aniwu "
                                    "sɛ mɛteɛ me nsa a ayɛ krado no akyerɛ W'adom soro no.",
                                style:
                                    TextStyle(fontSize: 20 * _scale, fontFamily: "NotoSans",),
                                textAlign: TextAlign.start,
                                maxFontSize: 56,
                                minFontSize: 8,
                              ),
                            ),
                          ],
                        ),


                        Divider(
                          height: 15,
                          color: Colors.transparent,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: AutoSizeText(
                                "Wohu, O me Nyankopɔn, sɛnea me nnisu si me kwan sɛ makae Wo na mentumi nna Wo su no adi "
                                "sɛnea ɛsɛ, O Wo a Woyɛ ɔsoro ne asase Ahenni so Wura! Menam W'ahenni ho nsɛnkyerɛnne ne Wo tumi "
                                "a ɛyɛ nwonwa no so resrɛ Wo  dom W'adɔfonom sɛnea Woadom te no, O Wo a Woyɛ abɔde nyinaa Wura, na "
                                    "Wo nhyira fata Wo, O nea yɛhu ne nea yɛnhu so Hene!",
                                style:
                                    TextStyle(fontSize: 20 * _scale, fontFamily: "NotoSans",),
                                textAlign: TextAlign.start,
                                maxFontSize: 56,
                                minFontSize: 8,
                              ),
                            ),
                          ],
                        ),


                        Divider(
                          height: 15,
                          color: Colors.transparent,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: AutoSizeText(
                                "Afei ɔmmɔ Din Kɛse no mpɛn abiɛsa, na ɔmmu nkotodwe mfa ne moma nka fam nka se:",
                                style:  TextStyle(
                                      fontSize: 20 * _scale,
                                        fontFamily: "NotoSans", fontStyle: FontStyle.italic
                                    ),
                                textAlign: TextAlign.start,
                                maxFontSize: 56,
                                minFontSize: 8,
                              ),
                            )
                          ],
                        ),


                        Divider(
                          height: 15,
                          color: Colors.transparent,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: AutoSizeText(
                                "Ayeyi nka Wo, O yɛn Nyankopɔn, sɛ Woama yɛn nea ɛtwe yɛn bɛn Wo, na Woadom yɛn nnepa biara a "
                                    "ɛwɔ Wo nwoma ne Wo Kyerɛwsɛm mu.",
                                style:
                                    TextStyle(fontSize: 20 * _scale, fontFamily: "NotoSans"),
                                textAlign: TextAlign.start,
                                maxFontSize: 56,
                                minFontSize: 8,
                              ),
                            ),
                          ],
                        ),


                        Divider(
                          height: 15,
                          color: Colors.transparent,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: AutoSizeText(
                                "Bɔ yɛn ho ban, yɛkotow srɛ Wo, O m'Awurade fi dɔm a nneɛmahunu ne nsusuihunu ahyɛ wɔn ma no ho. "
                                    "Nokware ni, Wo ne Otumfo no, Nimade nyinaa no.",
                                style:
                                    TextStyle(fontSize: 20 * _scale, fontFamily: "NotoSans",),
                                textAlign: TextAlign.start,
                                maxFontSize: 56,
                                minFontSize: 8,
                              ),
                            ),
                          ],
                        ),



                        Divider(
                          height: 15,
                          color: Colors.transparent,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: AutoSizeText(
                                "Afei ɔmma ne ti so, ntena ase nka se:",
                                style:  TextStyle(
                                      fontSize: 20 * _scale,
                                        fontFamily: "NotoSans", fontStyle: FontStyle.italic
                                    ),
                                textAlign: TextAlign.start,
                                maxFontSize: 56,
                                minFontSize: 8,
                              ),
                            )
                          ],
                        ),


                        Divider(
                          height: 15,
                          color: Colors.transparent,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: AutoSizeText(
                                "Medi nea Wɔn a Woapaw wɔn no gye to mu no ho adanse, O me Nyankopɔn, megye nea ɔsoro Paradise "
                                    "ahoteefo ne wɔn a wɔatwa Wo tumi Ahennwa no ho ahyia no gye di no nso to mu.",
                                style:
                                    TextStyle(fontSize: 20 * _scale, fontFamily: "NotoSans",),
                                textAlign: TextAlign.start,
                                maxFontSize: 56,
                                minFontSize: 8,
                              ),
                            ),
                          ],
                        ),

                        Divider(
                          height: 15,
                          color: Colors.transparent,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: AutoSizeText(
                                "Ɔsoro ne asase so ahenni nyinaa yɛ Wo dea, O wiase nyinaa Wura!",
                                style:
                                    TextStyle(fontSize: 20 * _scale, fontFamily: "NotoSans",),
                                textAlign: TextAlign.start,
                                maxFontSize: 56,
                                minFontSize: 8,
                              ),
                            ),
                          ],
                        ),


                        Divider(
                          height: 15,
                          color: Colors.transparent,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: AutoSizeText(
                                  "Bahá'u'lláh",
                                  style: TextStyle(
                                      fontSize: 20 * _scale,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.end,
                                  maxFontSize: 56,
                                  minFontSize: 8,
                                ),
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
