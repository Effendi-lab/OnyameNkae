import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:onyamenkae/audio_player.dart';

class OMeNyankopon extends StatefulWidget {
  @override
  _OMeNyankoponState createState() => _OMeNyankoponState();
}

class _OMeNyankoponState extends State<OMeNyankopon> {
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
    mmoaAudioStop();
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
              centerTitle: true,elevation: 50, gradient: LinearGradient(colors: [Colors.black,Colors.red[300],])
            ),
          ),
          body: Scaffold(

            appBar: PreferredSize(
              preferredSize: Size.fromHeight(40),
              child: GradientAppBar(title: Text("Mmoa", style:  TextStyle(fontSize: 20, fontFamily: "NotoSerif"),),
                automaticallyImplyLeading: false, gradient: LinearGradient(colors: [Colors.black,Colors.red[300],]),

                actions: <Widget>[


                     IconButton(icon: Icon(Icons.play_circle_outline,),
                      iconSize: 30,
                      onPressed: () =>
                      {
                      mmoaAudioPlay()
                      },),

                  IconButton(
                    icon: Icon(Icons.stop,), iconSize: 30, onPressed: () =>
                  {
                   mmoaAudioStop()
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
                  child: Column(

                    children: <Widget>[

                      Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 16, 8, 10),
                        child: AutoSizeText("O me Nyankopɔn, m'Awurade ne Wura! Matew me ho afi me nkurɔfo ho, na menam Wo so ahwehwɛ"
                            " ɔkwan a mɛtew me ho afi biribiara a ɛwɔ asase yi so ho. Mayɛ krado sɛ mɛgye ade biara a ɛsɔ W'ani"
                            " ato mu. Boa me na me nsa nka nnepa a ɛbɛma m'adi me ho so na mede me ho bɛto Wo nkutoo"
                            " so, na dom me na me nsa nka me kyɛfa mmoroso wɔ W'adɔe a ɛnsa da no mu. Nokware, Wo ne Awurade a adom abu Wo so.",
                            style:  TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                            textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8, ),
                      ),

                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: AutoSizeText("Báb", style: TextStyle(fontSize: 20*_scale, fontWeight: FontWeight.bold,
                                  fontFamily: "NotoSans"),
                                textAlign: TextAlign.end, maxFontSize: 56, minFontSize: 8,),
                            ),
                          ),
                        ],
                      )




                    ],
                  ),
                )
              ],
            ),
          ),
        )));
  }
}
