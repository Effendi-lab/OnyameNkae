import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:onyamenkae/audio_player.dart';

class NhyiamOOnyankopon extends StatefulWidget {
  @override
  _NhyiamOOnyankoponState createState() => _NhyiamOOnyankoponState();
}

class _NhyiamOOnyankoponState extends State<NhyiamOOnyankopon> {
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
    nhyiam2AudioStop();
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
                    style: TextStyle(fontSize: 25),
                  ),
                  centerTitle: true, elevation: 50, gradient: LinearGradient(colors: [Colors.black,Colors.red[300],]),
                ),
              ),
              body: Scaffold(
                appBar: PreferredSize(
                  preferredSize: Size.fromHeight(40),
                  child: GradientAppBar(title: Text("Nhyiam", style:TextStyle(fontSize: 20),),
                    automaticallyImplyLeading: false, gradient: LinearGradient(colors: [Colors.black,Colors.red[300],]),

                    actions: <Widget>[

                      IconButton(icon: Icon(Icons.play_circle_outline,),
                        iconSize: 30,
                        onPressed: () =>
                        {
                          nhyiam2AudioPlay()
                        },),
                      IconButton(
                        icon: Icon(Icons.stop,), iconSize: 30, onPressed: () =>
                      {
                        nhyiam2AudioStop()
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

                            AutoSizeText("MPAE A WƆBƆ BERE A WƆAWIE NHYIAM", style: TextStyle(fontSize: 20*_scale, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center, maxFontSize: 56, minFontSize: 8, ),

                            Divider( height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("O Onyankopɔn! O Onyankopɔn! Fi wo biakoyɛ ahemman a ani nhu no mu hwɛ sɛ yɛahyia wɔ honhom mu nhyiam yi ase. Yegye Wo di, wɔ awerɛhyem wɔ Wo nsɛnkyerɛnne mu. Yɛaso W'Apam ne W'Asɛm no mu pintinn, yɛatwiw abɛn Wo na Wo ho dɔ "
                        "gya no redɛw biribiri wɔ  yɛn mu na yɛdi nokware wɔ Wo som mu. Yɛyɛ nkoa wɔ Wo bobeturow no mu, yɛrebɔ Wo som no ho dawuru. "
                        "Yɛyɛ nokware asomfo ma Wo su ne Wo Ban, brɛ yɛn ho ase ma W'adɔfonom, kotowkotow Wo pon no ano, resrɛ Wo sɛ; hyɛ yɛn den na "
                        "yɛnsom wɔn a Woapaw wɔn no. Ma ɔsoro Atumfo mmɛtaa yɛn akyi, mmɛhyɛ yɛn den, Wo som mu na Woaboa ama yɛatumi  Abrɛbrɛ yɛn "
                                      "ho ase ayɛ asomfo (nkoa) papa a wɔne Wodi nkitaho.",
                                    style: TextStyle(fontSize: 20*_scale),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),
                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("O yɛn Awurade! Yɛyɛ mmerɛw, Wo na Woyɛ Ɔkɛse ne Otumfo.Yɛawuwu sunsum mu na Wo na Woma Honhom mu nkwa kɛse no. "
                                      "Ahia yɛn na Wo na Woma ahonya nyinaa, Wo ne Otumfo no.",
                                    style: TextStyle(fontSize: 20*_scale),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),

                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("O yɛn Awurade! Dan yɛn anim kyerɛ W'ahummɔbɔ aniwa no, fa W'adam kɛse no ma yɛn aduan a ɛfi ɔsoro adidipon no so. "
                                      "Ma abɔfo a wɔkorɔn dɔm no mmɛboa yɛn na ma Abhà Ahemman no mu ahoteefo no nhyɛ yɛn den.",
                                    style: TextStyle(fontSize: 20*_scale),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),
                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Nokware, Wo ne Adom Wura, Mmɔborɔhunufo no, Wo na mmoa nyinaa yɛ Wo dea, na nokware, Wobu w'ani gu bɔne so na "
                                      "Wo ne Ɔdomfo no.",
                                    style: TextStyle(fontSize: 20*_scale),
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
                                    child: AutoSizeText("'Abdu'l-Bahá", style: TextStyle(fontSize: 20*_scale, fontWeight: FontWeight.bold),
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