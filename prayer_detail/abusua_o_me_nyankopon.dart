import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

import '../../audio_player.dart';
class AbusuaOMeNyankopon extends StatefulWidget {
  @override
  _AbusuaOMeNyankoponState createState() => _AbusuaOMeNyankoponState();
}

class _AbusuaOMeNyankoponState extends State<AbusuaOMeNyankopon> {
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
    abusua1AudioStop();
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

                child:GradientAppBar(
                  title: Text(
                    "Onyame Nkae",
                    style:  TextStyle(fontSize: 25, fontFamily: "NotoSerif"),
                  ),
                  centerTitle: true, elevation: 50, gradient: LinearGradient(colors: [Colors.black,Colors.red[300],]),
                ),
              ),
              body: Scaffold(
                appBar: PreferredSize(
                  preferredSize: Size.fromHeight(40),
                  child: GradientAppBar(title: Text("Abusua", style:  TextStyle(fontSize: 20, fontFamily: "NotoSerif"),),
                    automaticallyImplyLeading: false, gradient: LinearGradient(colors: [Colors.black,Colors.red[300],]),

                    actions: <Widget>[

                      IconButton(icon: Icon(Icons.play_circle_outline,),
                        iconSize: 30,
                        onPressed: () =>
                        {
                          abusua1AudioPlay()
                        },),
                      IconButton(
                        icon: Icon(Icons.stop,), iconSize: 30, onPressed: () =>
                      {
                        abusua1AudioStop()
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

                                  child: AutoSizeText("O me Nyankopɔn mesrɛ Wo hɔ bɔnefafiri, na mesrɛ akwankyerɛ sɛnea ɛbɛyɛ a Wo nkoa bɛtumi adan wɔn ani akyerɛ Wo. "
                        "Mesrɛ bio sɛ, popa yɛn bɔne na yɛnyɛ nea ɛfata Wo Awurade, na fa me, m'awofo ne wɔn a Wo ankasa wo nsusui mu wɔahyɛn "
                                      "Wo dɔ ase na wɔnam kwan a ɛfata W'ahenni a ɛkorɔn no na ɛsɛ Wo sorosoro tumi anuonyam no.",
                                    style:  TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8, ),
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

                                  child: AutoSizeText("O me Nyankopɔn! Woahyɛ me kra nkuran ma ɔkotow srɛ Wo, na sɛ ɛnyɛ Wo a, anka merentumi nsu mfrɛ Wo. "
                            "Ayeyi ne anuonyam nka Wo: mede nkamfo ma Wo sɛ ɛyɛe a Wodaa Wo ho adi kyerɛɛ me, na Mesrɛ Wo, fa me mfomso kyɛ me, "
                                      "efisɛ metɔ sin wɔ m'asɛde a ɛsɛ sɛ meyɛ de hu Wo na maafom sɛ menantew wɔ Wo dɔ kwan no so.",
                                    style: TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8, ),
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
                                    child: AutoSizeText("Báb", style: TextStyle(fontSize: 20*_scale,
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
