import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}
bool _boolTheme = false;
IconData _iconLight = Icons.light;
IconData _iconDark = Icons.dark_mode;
ThemeData _lightTheme = ThemeData(
  brightness: Brightness.light
);
ThemeData _darkTheme = ThemeData(
  brightness: Brightness.dark
);
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _boolTheme?_lightTheme:_darkTheme,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Theme'),

          actions: [
            IconButton(onPressed: (){
              setState(() {
                _boolTheme =! _boolTheme;
              });
            }, icon: Icon(_boolTheme?_iconLight:_iconDark))
          ],
        ),
      ),
    );
  }
}
