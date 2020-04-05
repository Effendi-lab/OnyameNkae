import 'package:flutter/material.dart';
import 'package:onyamenkae/home.dart';
import 'package:onyamenkae/theme.dart';
import 'package:provider/provider.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_)=> ThemeNotifier(),
      child: Consumer<ThemeNotifier>(

        builder: (context, ThemeNotifier notifier, child) {
          return MaterialApp(

          title: 'Onyame Nkae',
          debugShowCheckedModeBanner: false,
          theme: notifier.darkTheme? dark : light,




          home: PrayerList(),
          );

        }
      ),
    );
  }
}



