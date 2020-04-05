import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:onyamenkae/prayers/prayer_detail/%C9%94hy%C9%9B_mpae_adatam.dart';
import 'package:onyamenkae/prayers/prayer_detail/%C9%94hy%C9%9B_mpae_nnianim.dart';
import 'package:onyamenkae/prayers/prayer_detail/%C9%94hy%C9%9B_mpae_tenten.dart';
import 'package:onyamenkae/prayers/prayer_detail/%C9%94hy%C9%9B_mpae_tiatia.dart';


class OhyeMpaeList extends StatefulWidget {
  @override
  _OhyeMpaeListState createState() => _OhyeMpaeListState();
}

class _OhyeMpaeListState extends State<OhyeMpaeList> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize( preferredSize: Size.fromHeight(50.0),
          child: GradientAppBar(title: Text("Onyame Nkae", style: TextStyle(fontSize: 30, fontFamily: "NotoSerif"),),
            centerTitle: true, elevation: 50, gradient: LinearGradient(colors: [Colors.black, Colors.red[300]]),
          ),
        ),

        body: Scaffold(
            appBar: PreferredSize( preferredSize: Size.fromHeight(40.0),
              child: GradientAppBar(title: Text("Ɔhyɛ Mpae", style:  TextStyle(fontSize: 20, fontFamily: "NotoSerif"),),
                centerTitle: true, automaticallyImplyLeading: false, gradient: LinearGradient(colors: [Colors.black, Colors.red[300]]),
                ),
            ),

            body:ListView(

              children: <Widget>[
                Card(
                  elevation: 0.0,
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        title: Text("Nnianim-Daa ɔhyɛ mpae no yɛ ahorow abiɛsa. Ogyedini no wɔ ho kwan sɛ ɔbɛfa emu biara..."
                          , style: GoogleFonts.aBeeZee(textStyle: TextStyle(fontSize: 20)),),
                        subtitle: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Shoghi Effendi"),
                        ),
                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>OhyeMpaeNnianim()))
                        },
                      ),
                      Divider(),

                      ListTile(
                        title: Text(
                          "Ɔhyɛ Mpae Tiatia - Medi ho adanse, O me nyankopɔn sɛ, Woabɔ me sɛ menhu Wo na..."
                          , style: GoogleFonts.aBeeZee(textStyle: TextStyle(fontSize: 20)),),
                        subtitle: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Bahá'u'lláh"),
                        ),
                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>OhyeMpaeTiatia()))
                        },
                      ),
                      Divider(),
                      ListTile(
                        title: Text("Ɔhyɛ Mpae Adatam - Hyɛ me nsa mu den, O Me nyankopɔn sɛnea ɛbɛtumi asɔ Wo Nwom..."
                          , style: GoogleFonts.aBeeZee(textStyle: TextStyle(fontSize: 20)),),
                        subtitle: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Bahá'u'lláh"),
                        ),
                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>OhyeMpaeAdatam()))
                        },
                      ),
                      Divider(),
                      ListTile(
                        title: Text("Ɔhyɛ Mpae Tenten - O Wo a Woyɛ din nyinaa Wura ne ɔsorosoro Yɛfo! Menam wɔn a wɔyɛ..."
                          , style:  TextStyle(fontSize: 20, fontFamily: "NotoSans"),),

                        subtitle: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Bahá'u'lláh"),

                        ),
                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>OhyeMpaeTenten()))
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