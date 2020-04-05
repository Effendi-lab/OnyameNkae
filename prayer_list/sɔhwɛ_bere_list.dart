import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:onyamenkae/prayers/prayer_detail/s%C9%94hw%C9%9B_bere_%C9%94no_ne_ahumm%C9%94b%C9%94.dart';
import 'package:onyamenkae/prayers/prayer_detail/s%C9%94hw%C9%9B_bere_o_awurade.dart';
import 'package:onyamenkae/prayers/prayer_detail/s%C9%94hw%C9%9B_bere_o_awurade_me_Nyankop%C9%94n.dart';
import 'package:onyamenkae/prayers/prayer_detail/s%C9%94hw%C9%9B_bere_so_obi_w%C9%94_h%C9%94_a.dart';


class SohweBere extends StatefulWidget {
  @override
  _SohweBereState createState() => _SohweBereState();
}

class _SohweBereState extends State<SohweBere> {
  @override
  Widget build(BuildContext context) {
    return
      SafeArea(
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: GradientAppBar(title: Text("Onyame Nkae", style: TextStyle(fontSize: 25, fontFamily: "NotoSerif"),),
              centerTitle: true, elevation: 50,
            gradient: LinearGradient(colors: [Colors.black,Colors.red[300],])),
          ),

          body: Scaffold(
              appBar: PreferredSize(
                preferredSize: Size.fromHeight(40),
                child: GradientAppBar(title: Text("Sɔhwɛ Bere", style: TextStyle(fontSize: 20, fontFamily: "NotoSerif"),),
                  centerTitle: true, automaticallyImplyLeading: false, gradient: LinearGradient(colors: [Colors.black,Colors.red[300],])
                ),
              ),



              body:ListView(

                children: <Widget>[
                  Card(
                    elevation: 0.5,
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          title: Text(
                            "So, obi wɔ hɔ a ɔpa ahokyere gu ka Onyankopɔn ho? Ka se: Ayeyi nka Onyame. Ɔyɛ Nyame am... "
                            , style:  TextStyle(fontSize: 20, fontFamily: "NotoSans"),),
                          subtitle: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Báb"),
                          ),
                          onTap: ()=>{
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>SoObi()))
                          },
                        ),
                        Divider(
                          height: 2,
                        ),
                        ListTile(
                          title: Text(
                            "O Awurade, Wo na Wopa ahokyerɛ gu na Woyi yare fi nnipa so. Wo na Woyi awerɛhow fi yɛn..."
                            , style: TextStyle(fontSize: 20, fontFamily: "NotoSans"),),
                          subtitle: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Báb"),
                          ),
                          onTap: ()=>{
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>SohweBereAwurade()))
                          },
                        ),
                        Divider(
                          height: 2,
                        ),
                        ListTile(
                          title: Text(
                            "O Awurade, me Nyankopɔn, m'ahokyere mu guankɔbea! M'amanehunu bere mu nkatabo..."
                            , style:  TextStyle(fontSize: 20, fontFamily: "NotoSans"),),
                          subtitle: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("'Abdu'l-Bahá"),
                          ),
                          onTap: ()=>{
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>SohweBereOAwuradeMeNyankopon()))
                          },
                        ),
                        Divider(
                          height: 2,
                        ),
                        ListTile(
                          title: Text(
                            "Ɔno ne Ahummɔbɔ no, Adom nyinaa Wura! O Onyankopɔn, me Nyankopɔn! Wohu me, Wo..."
                            , style:  TextStyle(fontSize: 20, fontFamily: "NotoSans"),),
                          subtitle: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("'Abdu'l-Bahá"),
                          ),
                          onTap: ()=>{
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>SohweBereOnoNeAhummobo()))
                          },
                        ),


                      ],
                    ),
                  )
                ],
              )




          ),

        ),
      );

  }
}