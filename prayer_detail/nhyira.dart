import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';


class Nhyira extends StatefulWidget {
  @override
  _NhyiraState createState() => _NhyiraState();
}

class _NhyiraState extends State<Nhyira> {
  double _prevScale;
  double _scale;

  @override
  void initState() {
    super.initState();
    _prevScale = _scale = 1.0;
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
              child: GradientAppBar(title: Text("Onyame Nkae", style:  TextStyle(fontSize: 25, fontFamily: "NotoSerif"),),
                centerTitle: true, elevation: 50, gradient: LinearGradient(colors: [Colors.black,Colors.red[300],])
              ),
            ),

            body: Scaffold(
              appBar: PreferredSize(
                preferredSize: Size.fromHeight(40),
                  child: GradientAppBar(title: Text("Nnianim", style:  TextStyle(fontSize: 20, fontFamily: "NotoSerif"),), centerTitle: true,
                    automaticallyImplyLeading: false, gradient: LinearGradient(colors: [Colors.black,Colors.red[300],]) )
              ),
              body: ListView(
                children: <Widget>[
                  Card(
                    elevation: 3,
                    margin: EdgeInsets.all(11),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Expanded(

                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(8.0, 16, 8, 10),
                                child: AutoSizeText("Nhyira nka beae no, ofi no, faako, kuropɔn, ne koma no, bepɔw, hintabea hɔ, ɔbodan no, subɔn,"
                                    " ne asase no, po, supɔw, ne nguan adidibea ko a wɔbɔ Onyankopɔn din kamfo No hyɛ No anuonyam wɔ hɔ.",
                                  style: TextStyle(fontSize: 20*_scale, fontFamily: "NotoSans",),
                                  textAlign: TextAlign.start, maxFontSize: 56, minFontSize: 8,),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: AutoSizeText("Bahá'u'lláh", style: TextStyle(fontSize: 20*_scale, fontWeight: FontWeight.bold,
                                  fontFamily: "NotoSans",),
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
            )

        ),
      ),
    );
  }
}
