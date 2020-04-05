import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:onyamenkae/audio_player.dart';

class HonhomMuNhyiamOOsoroHeneAgya extends StatefulWidget {
  @override
  _HonhomMuNhyiamOOsoroHeneAgyaState createState() => _HonhomMuNhyiamOOsoroHeneAgyaState();
}

class _HonhomMuNhyiamOOsoroHeneAgyaState extends State<HonhomMuNhyiamOOsoroHeneAgya> {
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
    honhommunhyiam1AudioStop();
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
                    style:  TextStyle(fontSize: 25, fontFamily: "NotoSerif"),
                  ),
                  centerTitle: true, elevation: 50, gradient: LinearGradient(colors:[Colors.black, Colors.red[300]] ),
                ),
              ),
              body: Scaffold(
                appBar: PreferredSize(preferredSize: Size.fromHeight(40),
                  child: GradientAppBar(title: Text("Honhom Mu Nhyiam", style: TextStyle(fontSize: 20, fontFamily: "NotoSerif"),),
                    automaticallyImplyLeading: false, gradient: LinearGradient(colors:[Colors.black, Colors.red[300]] ),

                    actions: <Widget>[

                      IconButton(icon: Icon(Icons.play_circle_outline,),
                        iconSize: 30,
                        onPressed: () =>
                        {
                          honhommunhyiam1AudioPlay()
                        },),
                      IconButton(
                        icon: Icon(Icons.stop,), iconSize: 30, onPressed: () =>
                      {
                        honhommunhyiam1AudioStop()
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

                            AutoSizeText("(Mo nhyia wɔ ahosɛpɛw a nkekae nni ho mu, na morebɛfi nhyiam no ase no, mommɔ saa mpae yi)",
                              style:  TextStyle(fontSize: 16*_scale,  fontStyle: FontStyle.italic, fontFamily: "NotoSerif"),
                              textAlign: TextAlign.center, maxFontSize: 56, minFontSize: 8, ),

                            Divider( height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("O Ɔsoro Hene Agya! Yɛahyia ha ɔhonam mu de, nanso yɛn koma a anya atenka sononko yi repagyaw yɛn Wo ho dɔ nti na "
                            "ɛno akyi no W'anim hyerɛn asran (nsensan) no na ɛde yɛn rekɔ. Yɛyɛ mmerɛw de, nanso yɛretwɛn Wo ahoɔden ne tumi bɔhyɛ no. "
                            "Yɛyɛ ahiafo de, yɛnni biribi anaa nnyinaso bi, nso yɛnya nnepa fi Wo Soro agyapade no mu. Yɛyɛ nsu a ɛresosɔw ko, Ko, ko, de, "
                            "nanso yɛnya nea yɛhia fi Wo po donkodonko no mu. Yɛyɛ dɔte nkyekyɛmu ketewa bi de, nanso yɛnya yɛn hyerɛn kyɛfa fi W'anuonyam "
                                      "awia hyireen no mu.",
                                    style: TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),
                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("O, Wo a Woma yɛn ahiade! Ma Wo mmoa nsian ngu yɛn so, na ama yɛn a yɛahyia ha yi mu biara  ahyerɛn te sɛ kyɛnerɛ a wasɔ, "
                            "obiara atwetwe afoforo aba W'ahemman no mu, na awiei koraa  yɛaboa ama wiase kusuu yi abɛyɛ Wo Paradise ahemman no ho "
                                      "nsɛnkyerɛnne (susudua).",
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