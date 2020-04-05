import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

import 'package:onyamenkae/hidden_words/o_ab%C9%94de_ba_%C9%9Bd%C9%9Bn_na_woma_wo_wer%C9%9B.dart';
import 'package:onyamenkae/hidden_words/o_ab%C9%94de_ba_bu_wabrab%C9%94.dart';
import 'package:onyamenkae/hidden_words/o_ab%C9%94de_ba_d%C9%94_me.dart';
import 'package:onyamenkae/hidden_words/o_ab%C9%94de_ba_nantew.dart';
import 'package:onyamenkae/hidden_words/o_ab%C9%94de_ba_nka_nkyer%C9%9B_%C9%94kra.dart';
import 'package:onyamenkae/hidden_words/o_ab%C9%94de_ba_wo_paradise_ne_me_d%C9%94.dart';
import 'package:onyamenkae/hidden_words/o_ab%C9%94de_ba_woy%C9%9B_me_kanea.dart';
import 'package:onyamenkae/hidden_words/o_hann_ba_ma_wo_wer%C9%9B_mfi.dart';
import 'package:onyamenkae/hidden_words/o_honhom_ba_hu_s%C9%9B_nokware.dart';
import 'package:onyamenkae/hidden_words/o_honhom_ba_mab%C9%94_wo.dart';
import 'package:onyamenkae/hidden_words/o_honhom_ba_mafotus%C9%9Bm.dart';
import 'package:onyamenkae/hidden_words/o_nipa_ba_bere_a_wo_ankasa.dart';
import 'package:onyamenkae/hidden_words/o_nipa_ba_di_ahurusi.dart';
import 'package:onyamenkae/hidden_words/o_nipa_ba_ma_me_nsom_wo_bo.dart';
import 'package:onyamenkae/hidden_words/o_nipa_ba_mma_wo_wer%C9%9B_nhow.dart';
import 'package:onyamenkae/hidden_words/o_nipa_ba_ntow.dart';
import 'package:onyamenkae/hidden_words/o_nipa_ba_nyi_matade.dart';
import 'package:onyamenkae/hidden_words/o_nipa_ba_s%C9%9B_makoa_bi.dart';
import 'package:onyamenkae/hidden_words/o_nipa_ba_s%C9%9B_wo_d%C9%94_me_a.dart';
import 'package:onyamenkae/hidden_words/o_nipa_ba_s%C9%9B_wotu_fa_wim.dart';
import 'package:onyamenkae/hidden_words/o_okasa_ba_wo_ne_maho%C9%94den.dart';
import 'package:onyamenkae/hidden_words/o_otumfo_no_ba_may%C9%9B_owuo.dart';


import 'o_abɔde_ba_me_dɔ_ne_mahoɔden.dart';







class HiddenWordsList extends StatefulWidget {
  @override
  _HiddenWordsListState createState() => _HiddenWordsListState();
}

class _HiddenWordsListState extends State<HiddenWordsList> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize( preferredSize: Size.fromHeight(50.0),
          child: GradientAppBar(title: Text("Onyame Nkae", style: TextStyle(fontSize: 25, fontFamily: "NotoSerif"),),
            centerTitle: true, elevation: 50,  gradient: LinearGradient(colors: [Colors.black, Colors.red[300]]),
          ),
        ),

        body: Scaffold(
            appBar: PreferredSize( preferredSize: Size.fromHeight(40.0),
              child: GradientAppBar(title: Text("Ahintasɛm - Arabic Fa No", style:  TextStyle(fontSize: 20, fontFamily: "NotoSerif" ),),
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
                        title: Text(
                          "1. O HONHOM BA! M'afotusɛm a edi kan ni: Nya akoma a emu tew, na ɛwɔ ahummɔbɔ..."
                          , style: TextStyle(fontSize: 20, fontFamily: "NotoSans"),),

                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>OhonhomBaMafotusem()))
                        },
                      ),
                      Divider(),
                      ListTile(
                        title: Text(
                          "5. O ABƆDE BA! Dɔ Me, ama Matumi adɔ wo. Sɛ Woannɔ Me a, ɔkwan biara so Me dɔ ren..."
                          , style: TextStyle(fontSize: 20, fontFamily: "NotoSans" ),),

                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>OAbodeBaDoMe()))
                        },
                      ),
                      Divider(),
                      ListTile(
                        title: Text(
                          "6. O ABƆDE BA! Wo (Soro Tenabea) Paradise ne Me dɔ; wo soro fi yɛ Me ne wo ayɔnkofa (koro..."
                          , style:  TextStyle(fontSize: 20, fontFamily: "NotoSans" ),),

                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>OAbodeBaWoParadiseNeMeDo()))
                        },
                      ),
                      Divider(),
                      ListTile(
                        title: Text(
                          "7. O NIPA BA! Sɛ wodɔ Me a, pa wo ho akyi; na sɛ wohwehwɛ M'anigye a, ɛno de nhwehwɛ w..."
                          , style: TextStyle(fontSize: 20, fontFamily: "NotoSans"),),

                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ONipaBaSeWoDoMeA()))
                        },
                      ),

                      Divider(),
                      ListTile(
                        title: Text(
                          "9. O ABƆDE BA! Me dɔ ne M'ahoɔden; nea ɔhyɛn mu no ho rentɔ kyima na ɔrenyera da..."
                          , style: TextStyle(fontSize: 20, fontFamily: "NotoSans"),),

                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>OAbodeBaMeDoNeMahoden()))
                        },
                      ),
                      Divider(),
                      ListTile(
                        title: Text(
                          "10. O ƆKASA BA! Wo ne M'ahoɔden; hyɛn mu sɛnea ɛbɛyɛ a wobɛnya asetena a ɔhaw nni..."
                          , style: TextStyle(fontSize: 20, fontFamily: "NotoSans" ),),

                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>OOkasaBaWoNeMahoden()))
                        },
                      ),
                      Divider(),
                      ListTile(
                        title: Text(
                          "11. O ABƆDE BA! Woyɛ Me Kanea na Me hann wɔ wo mu. Nya wo hyerɛn no fi mu na nhweh..."
                          , style: TextStyle(fontSize: 20, fontFamily: "NotoSans"),),

                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>OAbodeBaWoyeMeKanea()))
                        },
                      ),
                      Divider(),
                      ListTile(
                        title: Text(
                          "16. O HANN BA! Ma wo werɛ mfi biribiara gye Me nkutoo, na wo ne Me Honhom adi nkitaho..."
                          , style: TextStyle(fontSize: 20, fontFamily: "NotoSans"),),

                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>OHannBaMaWoWereMfi()))
                        },
                      ),
                      Divider(),
                      ListTile(
                        title: Text(
                          "17. O NIPA BA! Ma Me nsom wo bo na nhwehwɛ ɔboafo biara. Efisɛ obiara nsom wo..."
                          , style: TextStyle(fontSize: 20, fontFamily: "NotoSans"),),

                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ONipaBaMaMeNsomWoBo()))
                        },
                      ),
                      Divider(),
                      ListTile(
                        title: Text(
                          "22. O HONHOM BA! Mabɔ wo anuonyam mu, nanso woagu w'anim ase. Sɔrɛ ɛ, na yɛ nea..."
                          , style: TextStyle(fontSize: 20, fontFamily: "NotoSans"),),

                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>OHonhomBaMaboWo()))
                        },
                      ),
                      Divider(),
                      ListTile(
                        title: Text(
                          "26. O ABƆDE BA! Ɛdɛn na woma wo werɛ fi w'ankasa wo mfomso na w'ani ku afoforo bɔ..."
                          , style: TextStyle(fontSize: 20, fontFamily: "NotoSans"),),

                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>OAbodeBaEdenNaWomaWoWere()))
                        },
                      ),
                      Divider(),
                      ListTile(
                        title: Text(
                          "27. O NIPA BA! Bere a wo ankasa woyɛ ɔbɔnefo yi, nka afoforo bɔne ho asɛm. Sɛ wofom saa..."
                          , style: TextStyle(fontSize: 20, fontFamily: "NotoSans"),),

                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ONipaBaBereAWoAnkasa()))
                        },
                      ),
                      Divider(),
                      ListTile(
                        title: Text(
                          "28. O HONHOM BA! Hu sɛ nokware mu onipa biara a ose afoforo sɛ wɔnyɛ nea ɛteɛ (tenen..."
                          , style: TextStyle(fontSize: 20, fontFamily: "NotoSans"),),

                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>OHonhomBaHuSeNokware()))
                        },
                      ),
                      Divider(),
                      ListTile(
                        title: Text(
                          "29. O ABƆDE BA! Nka nkyerɛ ɔkra biara sɛ ɔnyɛ ɔnyɛ biribi a wo ankasa worentumi nyɛ; afei n..."
                          , style: TextStyle(fontSize: 20, fontFamily: "NotoSans"),),

                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>OAbodeBaNkaNkyereOkra()))
                        },
                      ),
                      Divider(),
                      ListTile(
                        title: Text(
                          "30. O NIPA BA! Sɛ M'akoa bi bisa wo biribi a, mfa nkame no, efisɛ n'anim yɛ M'anim; na ng..."
                          , style: TextStyle(fontSize: 20, fontFamily: "NotoSans"),),

                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ONipaBaSeMakoaBi()))
                        },
                      ),
                      Divider(),
                      ListTile(
                        title: Text(
                          "31. O ABƆDE BA! Bu wabrabɔ ho akontaa dabiara ansa na wɔafrɛ wo abɛbu wo atɛn; e..."
                          , style:  TextStyle(fontSize: 20,fontFamily: "NotoSans" ),),

                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>OAbodeBaBuWabrabo()))
                        },
                      ),
                      Divider(),
                      ListTile(
                        title: Text(
                          "32. O OTUMFO NO BA! Mayɛ owu ɔsomafo a ɔde anigye anigye brɛ wo. Ɛdɛn na wohow w..."
                          , style: TextStyle(fontSize: 20, fontFamily: "NotoSans"),),

                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>OOtumfoNoBaMayeOwuo()))
                        },
                      ),
                      Divider(),
                      ListTile(
                        title: Text(
                          "35. O NIPA BA! Mma wo werɛ nhow gye sɛ wo ne Yɛn ntam ware. Na mma w'ani nnye gye s..."
                          , style:  TextStyle(fontSize: 20, fontFamily: "NotoSans"),),

                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ONipaBaMmaWoWereNhow()))
                        },
                      ),
                      Divider(),
                      ListTile(
                        title: Text(
                          "36. O NIPA BA! Di ahurusi na nya anigye wɔ wo koma koma mu, sɛnea ɛbɛyɛ a wobɛtumi ah..."
                          , style: TextStyle(fontSize: 20, fontFamily: "NotoSans"),),

                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ONipaBaDiAhurusi()))
                        },
                      ),
                      Divider(),
                      ListTile(
                        title: Text(
                          "37. O NIPA BA! Nyi (Nworɔw) M'atade fɛfɛɛfɛ no mfi wo ho,na mma wo kyɛfa wɔ M'asuten nw..."
                          , style:  TextStyle(fontSize: 20, fontFamily: "NotoSans"),),

                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ONipaBaNyiMatade()))
                        },
                      ),
                      Divider(),
                      ListTile(
                        title: Text(
                          "38. O ABƆDE BA! Nantew wɔ Me mmaransɛm mu wɔ Me ho dɔ nti (ɔdɔ a wo wɔ ma Me ati)..."
                          , style: TextStyle(fontSize: 20, fontFamily: "NotoSans"),),

                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>OAbodeBaNantew()))
                        },
                      ),
                      Divider(),
                      ListTile(
                        title: Text(
                          "39. O NIPA BA! Ntow Me mmaransɛm nkyene sɛ wodɔ M'ahoɔfɛ de a, na mma wo werɛ mfi..."
                          , style: TextStyle(fontSize: 20, fontFamily: "NotoSans"),),

                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ONipaBaNtow()))
                        },
                      ),
                      Divider(),
                      ListTile(
                        title: Text(
                          "40. O NIPA BA! Sɛ wotu fa wim, mmaa nyinaa, kyinkyin ɔsorosoro afanan nyinaa mpo a, wor..."
                          , style:  TextStyle(fontSize: 20, fontFamily: "NotoSans"),),

                        onTap: ()=>{
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ONipaBaSeWotuFaWim()))
                        },
                      ),
                      Divider(
                        height:6, color: Colors.transparent,
                      ),

                    ],
                  ),

                ),
                Divider(
                  height:100, color: Colors.transparent,
                ),
              ],
            )




        ),

      ),
    );
  }
}