import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:onyamenkae/audio_player.dart';

class AyaresaMpaeTenten extends StatefulWidget {
  @override
  _AyaresaMpaeTentenState createState() => _AyaresaMpaeTentenState();
}

class _AyaresaMpaeTentenState extends State<AyaresaMpaeTenten> {
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
    ayaresaMpaeTentenAudioStop();
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

                  child: GradientAppBar(title: Text("Ayaresa Mpae", style: TextStyle(fontSize: 20, fontFamily: "NotoSerif"),),
                    automaticallyImplyLeading: false, gradient: LinearGradient(colors: [Colors.black,Colors.red[300],]),

                    actions: <Widget>[

                      IconButton(icon: Icon(Icons.play_circle_outline,),
                        iconSize: 30,
                        onPressed: () =>
                        {
                          ayaresaMpaeTentenAudioPlay()
                        },),
                      IconButton(
                        icon: Icon(Icons.stop,), iconSize: 30, onPressed: () =>
                      {
                        ayaresaMpaeTentenAudioStop()
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

                                  child: AutoSizeText("AYARESA MPAE TENTEN",
                                    style: TextStyle(fontSize: 20*_scale, fontFamily: "NotoSerif",fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),
                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Ɔno ne Ɔyaresafo no, Ɔkyɛso Nyame, Ɔboafo, Ɔde bɔne nyinaa kyɛ, Mmɔborɔhunu nyinaa Wura no.",
                                    style:  TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),

                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Mesu frɛ Wo O Wo a Wokorɔn, O Ɔnokwafo, O Onuonyamfo! Wo a Wokyɛ ma ɛso obiara so, Wo ne Ɔyaresafo, "
                                      "Wo a Woka yɛn ho, O Wo a ne yɛn wɔ hɔ!",
                                    style:  TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),


                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Mesu frɛ Wo O Ɔdeneho, O Wo a Woma ade biara korɔn, O Ɔtɛmmufo! Wo ne Ɔkyɛso Nyame, "
                                      "wo ne Ɔyaresafo, Wo a Woka yɛn ho, O Wo a Wo ne yɛn wɔ hɔ!",
                                    style:  TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),

                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Mesu  frɛ Wo O Wo a Wonni  Tipɛn, O Wo a Wowɔ hɔ afebɔɔ, O Wo a Woyɛ Ankonam! "
                                      "Wo ne Ɔkyɛso Nyame, Wo ne Ɔyaresafo, Wo a Woaka yɛn ho, O Wo a Wo ne yɛn wɔ hɔ!",
                                    style:  TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),
                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Mesu frɛ Wo O Nkamfo Kɛse Wura, O Ɔkronkroni, O Mmoa Wura! Wo ne Ɔkyɛso Nyame, "
                                      "Wo ne Ɔyaresafo, Wo a Woka yɛn ho, O Wo a Wo ne yɛn wɔ hɔ!",
                                    style:  TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),


                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Mesu frɛ Wo O Nimbiribiara, O Nyansabuakwa, O akɛsefo mu Ɔkɛse! Wo ne Ɔkyɛso Nyame, "
                                      "Wo ne Ɔyaresafo, Wo a Woka yɛn ho, O Wo a Wo ne yɛn wɔ hɔ!",
                                    style:  TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),

                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Mesu frɛ Wo O Ahummɔbɔ Wura, O Obirempɔn, O Wo a Woma ɛyɛ hɔ! Wo ne Ɔkyɛso Nyame, "
                                      "Wo ne Ɔyaresafo, Wo a Woka yɛn ho, O Wo a Wo ne yɛn wɔ hɔ!",
                                    style:  TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),
                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Mesu frɛ Wo O Ɔdɔfo, O Ɔkra Akɔnnɔde, O Wo a Wofa obiara nnommum! Wo ne Ɔkyɛso Nyame, "
                                      "Wo ne Ɔyaresafo, Wo a Woka yɛn ho, O Wo ne yɛn wɔ hɔ!",
                                    style:  TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),


                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Mesu frɛ Wo O Okokuroko, O Wo a Wokura yɛn, O Wo a Woyɛ Ɔhoɔdenfo! Wo ne Ɔkyɛso Nyame, "
                                      "Wo ne Ɔyaresafo, Wo a Woka yɛn ho, O Wo a Wo ne yɛn wɔ hɔ!",
                                    style: TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),

                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Mesu frɛ Wo Odiahene, O Ɔdeneho, O Ohintahu! Wo ne Ɔkyɛso Nyame, Wo ne Ɔyaresafo, "
                                      "Wo a Woka yɛn ho, O Wo a Wo ne yɛn wɔ hɔ!",
                                    style: TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),
                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Mesu frɛ Wo O Sumsum, O Hann, O Wo a Woda Wo ho adi ma ɛboro so! Wo ne Ɔkyɛso Nyame, "
                                      "Wo ne Ɔyaresafo, Wo a Woka yɛn ho, O Wo a Wo ne yɛn wɔ hɔ!",
                                    style: TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),


                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Mesu frɛ Wo O Wo a obiara ba Wo Nkyɛn, O Wo a obiara nim, Wo a Wode Wo ho ahinta obiara! "
                                      "Wo ne Ɔkyɛso Nyame, Wo ne Ɔyaresafo, Wo a Woka yɛn ho, O Wo a Wo ne yɛn wɔ hɔ!",
                                    style:  TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),

                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Mesu frɛ Wo O Wo a Wode Wo ho asie, O Nkonimdofo, O Ɔdomfo! Wo ne Ɔkyɛso Nyame, "
                                      "Wo ne Ɔyaresafo, Wo a Woka yɛn ho, O Wo a Wo ne yɛn wɔ hɔ!",
                                    style:  TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),
                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Mesu frɛ Wo O Tumi Nyinaa Wura, O Ɔboafo, O Wo a Wokata ade so! Wo ne Ɔkyɛso Nyame, "
                                      "Wo a Woka yɛn ho O Wo a Wo ne yɛn wɔ hɔ!",
                                    style:  TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),


                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Mesu frɛ Wo O Odwumfo, O Abotɔyam, O Wo a Wotu ɔhaw ase! Wo ne Ɔkyɛso Nyame, "
                                      "Wo ne Ɔyaresafo, Wo a Woka yɛn ho, O Wo a Wo ne yɛn wɔ hɔ!",
                                    style: TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),

                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Mesu frɛ Wo O Wo a Woma Wohomen so, O Wo a Woboaboa ade ano, O Wo a Woma ɛkorɔn! "
                                      "Wo ne Ɔkyɛso Nyame, Wo ne Ɔyaresafo, Wo a Woka yɛn ho, O Wo a Wo ne yɛn wɔ hɔ!",
                                    style: TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),
                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Mesu frɛ Wo O Wo a Woma ɛdi mu, O Wo a biribiara nsi Wo kwan, O Adom Wura! "
                                      "Wo ne Ɔkyɛso Nyame, Wo ne Ɔyaresafo, Wo a Woka yɛn ho, O Wo a Wo ne yɛn wɔ hɔ!",
                                    style: TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),


                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Mesu frɛ Wo O Wo a Wo nsam gow, O Wo a Woma wɔ Wo bere mu, O Adebɔ Wura! Wo ne Ɔkyɛso Nyame, "
                                      "Wo ne Ɔyaresafo, Wo a Woka yɛn ho, O Wo a Wo ne yɛn wɔ hɔ!",
                                    style:  TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),

                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Mesu frɛ Wo O Ahosan Mmoroso, O Ɔhoɔfɛfo, O Adɔe Mmoroso! Wo ne Ɔkyɛso Nyame, Wo ne Ɔyaresafo, "
                                      "Wo a Woka yɛn ho, O wo ne yɛn wɔ hɔ!",
                                    style: TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),
                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Mesu frɛ Wo O Ɔteneneeni, O Ɔdomfo, O Ɔyamyefo! Wo ne Ɔkyɛso Nyame, Wo ne Ɔyaresafo, "
                                      "wo a woka yɛn ho, O Wo a Wo ne yɛn wɔ hɔ!",
                                    style: TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),


                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Mesu frɛ Wo O Wo a Wohyɛ obiara, O Ɔbotantim, O Nimade Nyinaa! Wo ne Ɔkyɛso Nyame, "
                                      "Wo ne Ɔyaresafo, Wo a Woka yɛn ho, O Wo a Wo ne yɛn wɔ hɔ!",
                                    style:  TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),

                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Mesu frɛ Wo O Ɔnwonwani, O Tetekwaframmoa, O Ayamye Mmoroso! Wo ne Ɔkyɛso Nyame, "
                                      "Wo ne Ɔyaresafo, Wo a Woka yɛn ho, O Wo a Wo ne yɛn wɔ hɔ!",
                                    style:  TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),
                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Mesu frɛ Wo O Wo a Wo ho banbɔ afa baabiara, O Anigye Wura, O Akɔnnɔde (Wo a wɔpere hwehwɛ Wo)! "
                                      "Wo ne Ɔkyɛso Nyame, Wo ne Ɔyaresafo, Wo a Woka yɛn ho, O Wo a Wo ne yɛn wɔn hɔ!",
                                    style:  TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),


                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Mesu frɛ Wo O Wo a Wo yam ye ma obiara, O Wowɔ Tema ma obiara, O Wo a Wowɔ Ayamye Mmoroso! "
                                      "Wo ne Ɔkyɛso Nyame, Wo ne Ɔyaresafo, Wo a Woka yɛn ho, O Wo a Wo ne yɛn wɔ hɔ!",
                                    style:  TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),

                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Mesu frɛ Wo O Gyinabea a obiara hwehwɛ, O Guankɔbea ma obiara, O Wo a Wokora biribiara! "
                                      "Wo ne Ɔkyɛso Nyame, Wo ne Ɔyaresafo, Wo a Woka yɛn ho, O wo a Wo ne yɛn wɔ hɔ!",
                                    style:  TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),
                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Mesu frɛ Wo O Wo a Wogye obiara, O Wo a obiara su frɛ Wo O Wo a Woma nkanyan! "
                                      "Wo ne Ɔkyɛso, Nyame, wo ne Ɔyaresafo, Wo a Woka yɛn ho, O Wo a Wo ne yɛn wɔ hɔ!",
                                    style:  TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),


                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Mesu frɛ Wo O Wo a Woma biribiara da adagyaw, O Osɛefo, O Wo a Woyɛ Mmɔborɔhunu mu Mmborɔhunu! "
                                      "Wo ne Ɔkyɛso Nyame, Wo ne Ɔyaresafo, Wo a Woka yɛn ho, O Wo a Wo ne yɛn wɔ hɔ!",
                                    style:  TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),

                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Mesu frɛ Wo O Wo a Woyɛ me kra, O Wo a Woyɛ me Dɔfo, O m'Awerɛhyɛm! Wo ne Ɔkyɛso Nyame, "
                                      "Wo ne Ɔyaresafo, Wo a Woka yɛn ho, O Wo a Wo ne yɛn hɔ!",
                                    style: TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),
                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Mesu frɛ Wo O Wo a Wodwo sukɔm ano, O Awurade Ɔdɛɛfo, O Wo a Wosom Bo Mmoroso! Wo ne Ɔkyɛso Nyame, "
                                      "Wo ne Ɔyaresafo, Wo a Woka yɛn ho, O wo ne yɛn wɔ hɔ!",
                                    style:  TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),


                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Mesu frɛ Wo O Nkae Kɛse, O Din Kokuroko, O Tete Kwanpɔn! Wo ne Ɔkyɛso Nyame, Wo ne Ɔyaresafo, "
                                      "Wo a Woka yɛn ho, O Wo a Wo ne yɛn wɔ hɔ!",
                                    style:  TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),

                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Mesu frɛ Wo Nkamfo Kɛse, O Ɔkronkron mu kronkron, O Wo a Nkekae biara nni Wo ho! Wo ne "
                                      "Ɔkyɛso Nyame, Wo ne Ɔyaresafo, Wo a Woka yɛn ho, O wo a Wo ne yɛn wɔ hɔ!",
                                    style:  TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),
                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Mesu frɛ Wo O Deduamsanfo, O Ɔfotufo, O Ogyefo! Wo ne Ɔkyɛso Nyame, Wo ne Ɔyaresafo, "
                                      "Wo a Woka yɛn ho, O Wo a Wo ne yɛn wɔ hɔ!",
                                    style:  TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),


                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Mesu frɛ Wo O Adamfo, O Oduruyɛfo, O Wo a Wofa adwene nnommum! Wo ne Ɔkyɛso Nyame, Wo ne "
                                      "Ɔyaresafo, Wo a Woka yɛn ho, O wo a Wo ne yɛn wɔ hɔ!",
                                    style:  TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),

                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Mesu frɛ Wo O Anuonyam, O Ahoɔfɛ, O Adom Wura! Wo ne Ɔkyɛso Nyame, Wo ne Ɔyaresafo, "
                                      "Wo a Woka yɛn ho, O Wo a Wo ne yɛn wɔ hɔ!",
                                    style:  TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),
                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Mesu frɛ Wo O Awerehyɛm mu Awerɛhyɛm, O Ɔdɔfo Kann, O Adekyee Wura! Wo ne Ɔkyɛso Nyame, Wo ne "
                                      "Ɔyaresafo, Wo a Woka yɛn ho, O Wo a Wo ne yɛn wɔ hɔ!",
                                    style:  TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),


                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Mesu frɛ Wo O Nkanyan, O Wo a Woma ɛhyerɛn, O Wo Nkanyan, O Wo a Woma Ahosɛpɛ! Wo ne "
                                      "Ɔkyɛso Nyame, Wo ne Ɔyarefo, Wo a Woka yɛn ho, O Wo ne yɛn wɔ hɔ!",
                                    style:  TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),

                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Mesu frɛ Wo O Adɔe Wura, O Ɔtema mu Tema, O Ahummɔbɔ mu Ahummɔbɔ! Wo ne Ɔkyɛso Nyame, "
                                      "Wo ne Ɔyaresafo, Wo a Woka yɛn ho, O Wo a Wo ne yɛn wɔ hɔ!",
                                    style: TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),
                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Mesu frɛ Wo O Wo a Wonsakra da, O Ɔma Nkwa, O Abɔde nyinaa abɔse! Wo ne Ɔkyɛso Nyame, "
                                      "Wo ne Ɔyaresafo, Wo a Woka yɛn ho, O Wo a ne yɛn wɔ hɔ!",
                                    style: TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),


                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Mesu frɛ Wo O Wo a Wowɔ ade nyinaa mu, O Ohu ade nyinaa Nyame, O Asɛm (Ɔkasa) nyinaa Wura! "
                                      "Wo ne Ɔkyeso Nyame, Wo ne Ɔyaresafo, Wo a Woka yɛn ho, O Wo a Wo ne yɛn wɔ hɔ!",
                                    style:  TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),

                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Mesu frɛ Wo O Wo a Woda Wo ho adi nanso Woahitaw, O Wo a wɔnhu Wo nanso Wo a Din ahyeta, "
                                      "O Bɛhwɛɛadeni a obiara hwehwɛ Wo! Wo ne Ɔyaresafo, Wo a Woka yɛn ho, O Wo a Wo ne yɛn wɔ hɔ!",
                                    style: TextStyle(fontSize: 20*_scale,fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),
                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Mesu frɛ Wo O Wo a Wotɔre Adɔfo ase, O Adom Nyame ma Atirimuɔdenfo!",
                                    style: TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),


                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("O Ɔkyɛso Nyame, Mesu frɛ Wo,",
                                    style: TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),

                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("O Ɔkyɛso Nyame!",
                                    style: TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),
                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("O Ɔyaresafo, Mesu frɛ Wo,",
                                    style: TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),


                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("O Ɔyaresafo!",
                                    style: TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),

                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("O Ɔhokafo Mesu frɛ Wo,",
                                    style:  TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),
                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("O Ɔhokafo!",
                                    style:  TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),


                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Wo na Wo ne yɛn wɔ hɔ afebɔɔ, O Wo ne nea Ɔka yɛn ho! Ɔhoteefo (Ɔkronkroni) ne Wo, "
                            "O me Nyankopɔn! Mekotow srɛ Wo fa W'adɔe a ɛnam ɛno so nti Wobuee W'adom ne nhyira apon ano tɛtrɛɛ, "
                                "sii Asɔredan a ɛkyerɛ Wo kronkronyɛ wɔ daa ahennwa no so; na W'ahummɔbɔ nti Wotoo nsa frɛɛ abɔde "
                            "nyinaa baa W'adom ne akyɛda pon no ho; na ɛnam Woadom so nti W'Ankasa gyinaa wɔn a wɔwɔ ɔsoro ne "
                            "asase so gyee pene a ɛse; Yiw! bere a Wo tumi ne Wo kɛseyɛ daa ne ho adi adekyee mmere mu a "
                            "W'ahenni Kɛseyɛ (Korɔn) no daa adi. Bio, menam din fɛfɛɛfɛ yi so ne saa abɔdin a ɛkorɔn na ɛdi mu yi so, "
                           "ne Wo Nkae Kɛse ne W'ahoɔfɛ fee no Hanna a asie wɔ pata a ahintaw fee no ase, ne Wo Din a ateetee ntama adura "
                            "ho no kotow srɛ Wo sɛ anɔpa ne anwummere biara bɔ nea ɔpae mu ka saa nsɛm yi, nea Ɔbɛtwiw abɛn ho ne obiara a ɔbɛtwa ɔdan biara a ɛwɔ mu no ho ban.",
                                    style:  TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),

                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Fa so sa ɔyare biara, nea n'apɔw mu ntene no ne nea ohia adosaw no fi amanehunu ne ɔhaw mu, ateetee ne "
                                      "awerɛhow mu, na gyina so kyerɛ nea ɔpɛ sɛ ɔfa W'akwankyerɛ Kwan no so ne Wo fafiri ne adom so no kwan.",
                                    style:  TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans"),
                                    textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,  ),
                                ),
                              ],
                            ),
                            Divider(height: 15, color: Colors.transparent,),
                            Row(
                              children: <Widget>[
                                Expanded(

                                  child: AutoSizeText("Nokware ni Wo ne Tumi Wura no, Ɔkyɛso Nyame, Ɔyaresafo, Banbɔfo no, Ɔkyɛade, Ɔtema, Wo a Wo nsam gow, "
                                      "Ahummɔbɔ no.",
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