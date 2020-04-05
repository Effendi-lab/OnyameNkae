import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

import 'package:onyamenkae/audio_player.dart';

class NhyiamOHonhomMuOdomfo extends StatefulWidget {
  @override
  _NhyiamOHonhomMuOdomfoState createState() => _NhyiamOHonhomMuOdomfoState();
}

class _NhyiamOHonhomMuOdomfoState extends State<NhyiamOHonhomMuOdomfo> {
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
    nhyiam1AudioStop();
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
                  child:GradientAppBar(title: Text("Nhyiam", style: TextStyle(fontSize: 20, fontFamily: "NotoSerif"),),
                    automaticallyImplyLeading: false, gradient: LinearGradient(colors: [Colors.black,Colors.red[300],]),

                    actions: <Widget>[

                      IconButton(icon: Icon(Icons.play_circle_outline,),
                        iconSize: 30,
                        onPressed: () =>
                        {
                          nhyiam1AudioPlay()
                        },),
                      IconButton(
                        icon: Icon(Icons.stop,), iconSize: 30, onPressed: () =>
                      {
                        nhyiam1AudioStop()
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

                                  child: AutoSizeText("O honhom mu Ɔdomfo! Dɔm a wɔahyia ha yi yɛ Wo nnamfo a W'ahoɔfɛ atwe wɔn na Wo dɔ ho gya redɛw framfram wɔ wɔn mu. "
                                      "Ma saa akra yi nyɛ ɔsoro Abɔfo, fa Wo Honhom Kronkron mframa no kanyan wɔn, ma wɔn anotew ne akoma a esi pi, tow ɔsoro tumi "
                                      "ne W'ahummɔbɔ atenka no gu wɔn so ma wɔnyɛ osetie na wɔmmɔ adasa nkabom no ho dawuru, na boa wɔn ma wɔnyɛ wɔn a wɔde ɔdɔ ne "
                                      "koroyɛ ba adasamma mu, sɛnea ɛbɛyɛ a Nokware Hann no bɛpam adwenehunu sum kabii a aduru yi, na ama wiase bisii yi ahyerɛn, na ɔhonam wiase atwetwe nsensan a efi Honhom wiase no, na ama nnipa su horow yi aka abɔ "
                                      "mu ayɛ su baako na ne nkamfo nnyegye "
                                      "no adu W'ahotew ahemman no mu.",
                                    style: TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),
                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Nokware, Wo na Wo Korɔn na Woyɛ Ɔkɛse!",
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