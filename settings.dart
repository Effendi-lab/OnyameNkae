import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:onyamenkae/theme.dart';
import 'package:provider/provider.dart';
import 'package:wakelock/wakelock.dart';


class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize( preferredSize: Size.fromHeight(50.0),
          child: GradientAppBar(title: Text("Onyame Nkae", style: TextStyle(fontSize: 25, fontFamily: "NotoSerif"),),
          centerTitle: true, gradient: LinearGradient(colors: [Colors.black, Colors.red[300]]),
          ),
        ),


        body: ListView(
            children: <Widget>[

              Row(children: <Widget>[
                Expanded(child:
                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 10.0,8.0, 0.0),
                  child: AutoSizeText("Theme", style: TextStyle (fontFamily: "NotoSerif", fontSize: 25),
                    textAlign: TextAlign.center,),
                ))
              ],),
              Card(
                elevation: 5,
                margin: EdgeInsets.fromLTRB(20, 5, 20, 0),
                child: Column(
                  children: <Widget>[

                    Consumer<ThemeNotifier>(builder: (context, notifier, child)=> SwitchListTile(
                      title: Text("Dark Mode" , style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                      onChanged: (val){
                        notifier.toggleTheme();
                      },
                      value: notifier.darkTheme,
                    ),
                    ),

                  ],
                ),
              ),
              Divider(height: 15, color: Colors.transparent,),


Divider(height: 15, color: Colors.transparent,),




              ListTile(
                title: Text("Onyame Nkae", textAlign: TextAlign.center,),
                subtitle: Text("Version 1.0.2", textAlign: TextAlign.center,),
              ),




              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  FlatButton(
                    splashColor: Colors.black,
                    onPressed: () {

                      // The following code will enable the wakelock on Android or iOS using the wakelock plugin.
                      setState(() {
                        Wakelock.enable();
                        // You could also use Wakelock.toggle(on: true);
                      });
                    },
                    child: const Text('on'),
                  ),
                  FlatButton( splashColor: Colors.red[300],

                    onPressed: () {
                      // The following code will disable the wakelock on Android or iOS using the wakelock plugin.
                      setState(() {
                        Wakelock.disable();
                        // You could also use Wakelock.toggle(on: false);
                      });
                    },
                    child: const Text('off'),
                  ),

                ],
              ),

              FutureBuilder(
                future: Wakelock.isEnabled,
                builder: (context, AsyncSnapshot<bool> snapshot) {
                  // The use of FutureBuilder is necessary here to await the bool value from isEnabled.
                  if (!snapshot.hasData)
                    return Container(); // The Future is retrieved so fast that you will not be able to see any loading indicator.
                  return Text(
                      'Keep screen awake ${snapshot.data ? 'on' : 'off'}', textAlign: TextAlign.center,);
                },
              )

            ],

          ),





      ),
    );
  }
}

