import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:onyamenkae/audio_player.dart';

class NkanfoNeAyeyiOAwurade extends StatefulWidget {
  @override
  _NkanfoNeAyeyiOAwuradeState createState() => _NkanfoNeAyeyiOAwuradeState();
}

class _NkanfoNeAyeyiOAwuradeState extends State<NkanfoNeAyeyiOAwurade> {
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
    nkanfoNeAyeyi1AudioStop();
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
                appBar: PreferredSize(
                  preferredSize: Size.fromHeight(40.0),
                  child: GradientAppBar(title: Text("Nkanfo Ne Ayeyi", style: TextStyle(fontSize: 20, fontFamily: "NotoSerif"),),
                    automaticallyImplyLeading: false, gradient: LinearGradient(colors: [Colors.black, Colors.red[300]]),

                    actions: <Widget>[

                      IconButton(icon: Icon(Icons.play_circle_outline,),
                        iconSize: 30,
                        onPressed: () =>
                        {
                          nkanfoNeAyeyi1AudioPlay()
                        },),
                      IconButton(
                        icon: Icon(Icons.stop,), iconSize: 30, onPressed: () =>
                      {
                        nkanfoNeAyeyi1AudioStop()
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

                                  child: AutoSizeText("O Awurade, me Nyankopɔn, Wo Din yɛ kɛse! Wo na abɔde nyinaa som Wo a Wo nsom obiara, Wo ne nneɛma "
                            "nyinaa wura a Wo nnan obiara, Wo na Wonim biribiara nanso obiara nnim Wo. Wopɛe sɛ Woda Wo ho adi kyerɛ "
                        "nnipa nti, Wonam Wo nyansa ne W'anum asɛm so bɔɔ wiase ne mu nneɛma nyina. Onyame foforo bi nni hɔ ka Wo ho, "
                                      "Wo a Wobɔɔ wiase, hyehyɛɛ mu nneɛma nyinaa, Ɔkɛse ne Tumi nyina  Wura.",
                                    style: TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),

                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Mede saa asɛm yi a ada ne ho adi wɔ biribiara so wɔ Wo pɛ mu no, sɛ, ma mennom nkwa nsu a ama "
                            "wɔn a Woapaw wɔn no koma asi pi, na akanyan akra a wɔdɔ Wo no, na ama bere biara mahu Wo na mede me "
                                      "ho nyinaa ato Wo so. Wo ne tumi, adom ne anuonyam nyinaa Nyankopɔn.",
                                    style:  TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),
                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Onyame foforo bi nni hɔ ka Wo ho, ahene mu Hene, Anounyam nyinaa farebae, "
                                      "Birekyirihuade Onyame a Wohu ade nyinaaa.",
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
                                    child: AutoSizeText("Bahá'u'lláh", style: TextStyle(fontSize: 20*_scale,
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