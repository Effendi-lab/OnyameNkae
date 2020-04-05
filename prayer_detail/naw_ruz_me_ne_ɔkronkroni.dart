import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:onyamenkae/audio_player.dart';

class NawRuzMeNeOkronkroni extends StatefulWidget {
  @override
  _NawRuzMeNeOkronkroniState createState() => _NawRuzMeNeOkronkroniState();
}

class _NawRuzMeNeOkronkroniState extends State<NawRuzMeNeOkronkroni> {
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
                    style: TextStyle(fontSize: 25, fontFamily: "NotoSerif"),
                  ),
                  centerTitle: true, elevation: 50, gradient: LinearGradient(colors: [Colors.black, Colors.red[300]]),
                ),
              ),
              body: Scaffold(
                appBar: PreferredSize(  preferredSize: Size.fromHeight(40.0),
                  child: GradientAppBar(title: Text("Naw-Ruz", style:  TextStyle(fontSize: 20, fontFamily: "NotoSerif"),),
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

                                  child: AutoSizeText("Mene Ɔkronkroni Kann no, Ɔkɛse mu Ɔkɛse no, Anuonyam mu Onuonyamfo no."
                        ,
                                    style: TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),


                            Divider(height: 15, color: Colors.transparent,),

                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Ayeyi nka Wo, O me Nyankopɔn, sɛ Woayi saa da yi sɛ ɛyɛ afahyɛda ama Wo nkoa a Woadom wɔn ne wɔn a wɔdi Wo nokware wɔ W’adɔfonom mu. Woama saa da yi Din a ama adebɔ nyinaa wɔabrɛ n’ase na W’Adiyisɛm mframa nwinwiinwin no abɔ afa asaase so ne ɔsoro a, Din a ɛnam so nea wɔakyerɛw wɔ Wo Nwoma Akronkron ne Nyamesɛm Kronkron mu no wɔabue so de ato gua, a ɛno na "
                            "W’Asomafo ne Wɔn a Wɔapaw wɔn no ahyɛ ho nkɔm sɛnea ɛbɛyɛ a nnipa nyinaa besiesie wɔn ho na wɔahu Wo, adan wɔn ani akyerɛ Wo nkabom po kɛse no, agyina W’ahennwa trabea no anim, atie Wo frɛ nwonwaso a efi Wo trabea a Wo Ban a wɔnhu Apueibea ne Wo Su Mfiase Beae hɔ."
                            ,
                                    style: TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),


                            Divider(height: 15, color: Colors.transparent,),

                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Mede nkamfo ma Wo, O Awurade me Nyankopɔn, sɛ Wo bɔhyɛ no Woadi  so, W’adom  no  awie  pɛyɛ,  na  Woama  Nea  Odi  Wo  biakoyɛ  ne  Wo  koroyɛ  ho  adanse  no "
                                      "Woapagyaw wɔ ɔsoro Adiyisɛm ahennwa no so, ahyɛ adasamma nyinaa sɛ wɔmmɛgyina N’anim. Nnipa no mu binom adan wɔn ani aba N’anim, abegyina N’anim pɛɛ, anom N’Adiyisɛm no mu bobesa a wahyɛda apaw no. Megyina W’ahenni tumi a ebunkam ade nyinaa so no so kotow srɛ Wo ɛne W’adom a atwa abɔde nyinaa ho ahyia no so, "
                                      "sɛ boa W’adɔfonom sɛnea ɛbɛyɛ a wɔbɛtwe wɔn ho afi biribiara ho gye Wo nkutoo na wɔde wɔn ani asi Wo nhyira ahyiae hɔ pɛ so. Bio, boa wɔn na wɔatumi asɔre asom Wo, wɔatumi ada biribiara a Wopɛ wɔ Wo wiase na wɔatumi apagyaw Wo nkonimdi frankaa no akɔ soro wɔ W’asaase so. Nokware ni, Wone Opunpuni no, Nea ɔkorɔn, ɔsoro Ahemman mu Hobambɔfo, Nea Onim Ade Nyinaa Wura no."

                                    ,
                                    style: TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),

                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Mede nkamfo ma Wo, O Awurade me Nyankopɔn, sɛ Woayɛ saa deduamfi  yi "
                                      "W’ahemman ahennwa, W’ahemman fi ma ahemman no, Wo daa asuten ma daa asuten no, apueibea ma W’ahemenakye nyinaa, faako a W’adom siane hwiegu ne nkwa honhom so ma W’abɔde honam nyinaa. Mesrɛ Wo sɛ boa wɔ a Woapaw wɔn no na woatumi ayɛ nea ɛsɔ W’ani. Bio, tew wɔn ho, "
                                      "O me Nyankopɔn fi biribiara a ɛbɛma nkekae aka wɔn adurade mu Wo mmere yi mu. O Awurade, Wohu yiye wɔ amanaman bi mu, nneɛma a ɛne Wo pɛ bɔ abira, ɛna Wohu pefee nso dodow a wɔse wɔdɔ Wo na wɔyɛ nea W’atamfo no ayɛ. Fa nkwa nsu tew wɔn ho, "
                                      "O Awurade sɛnea Wode atew wɔn a wɔwɔ Wo nkoa mu a W’ani ku wɔn ho no ho ne nokwarefo a wɔwɔ Wo nkoa mu no. Hohoro wɔn ho fi nkekae biribiara a ɛde fi bɛka Wo Som wɔ Wo man ahorow mu anaa ebesi Wo nkrɔfo a ɛwɔ W’akuropɔn mu no kwan na ɛremma wɔnhu Wo."

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

                                  child: AutoSizeText("O Awurade, megyina Wo Din a ɛboro din nyina so no so srɛ Wo sɛ, bɔ wɔn ho ban fi wɔn ankasa pɛ ne akɔnnɔbɔne ho, sɛnea Woahyɛ wɔ Wo nwoma mu no. Bio, ma ho kwan na wɔnyɛ Wo Som no ho mman, sɛnea ɛbɛyɛ a ɛnam wɔn so Wo nsɛmhwam no bɛhyeta W’asaase so na kronkronyɛ bɛda adi wɔ Wo nkrɔfo mu. "
                            "Wowɔ tumi sɛ Woyɛ nea Wopɛ ankasa. Nyame bi nni hɔ gye Wo pɛ, Ahokyerebere mu Boafo, Nea Odi Nankasa ho so."
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