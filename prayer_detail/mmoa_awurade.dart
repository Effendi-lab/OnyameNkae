import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

import 'package:onyamenkae/audio_player.dart';

class Awurade extends StatefulWidget {
  @override
  _AwuradeState createState() => _AwuradeState();
}

class _AwuradeState extends State<Awurade> {
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
    mmoa2AudioStop();
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
                  child: GradientAppBar(title: Text("Mmoa", style: TextStyle(fontSize: 20, fontFamily: "NotoSerif"),),
                    automaticallyImplyLeading: false, gradient: LinearGradient(colors: [Colors.black,Colors.red[300],]),

                    actions: <Widget>[

                      IconButton(icon: Icon(Icons.play_circle_outline,),
                        iconSize: 30,
                        onPressed: () =>
                        {
                          mmoa2AudioPlay()
                        },),
                      IconButton(
                        icon: Icon(Icons.stop,), iconSize: 30, onPressed: () =>
                      {
                        mmoa2AudioStop()
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

                                  child: AutoSizeText("Awurade! Yɛyɛ mmɔbɔ hu yɛn mmɔbɔ; yɛyɛ ahiafo, ma yɛn yɛn kyɛfa a ɛfi W'ahonya po no mu; ahia yɛn, ma yɛn yɛn ahiade, yɛn anim agu ase, ma yɛnnya W'anuonyam. Wim nnomaa ne asase so mmoa nyinaa Wobue Wo "
                                      "nsam ma wɔnya wɔn anoduan da biara, na abɔde nyinaa nya wo nhwɛso pa ne Wodɔ mmoroso.",
                                    style: TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans" ),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),

                           Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Mma W'adom nwonwaso yi ntwa W'akoa ɔhonammerɛwfo yi ho nkɔ. Ma yen daa aduan, "
                                      "na yɛn asetena mu ahiade nso ma yɛn mmɔho mmɔho, "
                                      "na ama yɛatumi de yɛn ho ato Wo nkutoo so, anya bere ne Wo adi nkitaho, "
                                      "na yɛafa Wo kwan pa no so na yɛaka W'anwonwade akyerɛ." ,
                                    style:TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8, ),
                                ),
                              ],
                            ),

                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Wo ne Okokuroko no ne Ɔdɔfo no, Nea ɔma adasamma ahiade nyinaa.",
                                    style: TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize:56, minFontSize: 8,),
                                ),
                              ],
                            ),


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
