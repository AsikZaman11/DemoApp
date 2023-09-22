import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../fragement/style.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}
int add=0;
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.yellow,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),

            ),
              elevation: 5,
              textStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.6,
                wordSpacing: 0.5,
              )
          )
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.pink,
          elevation: 5,
          shadowColor: Colors.pink
        ),
          textTheme: TextTheme(
          bodyMedium: TextStyle(
            fontSize: 18
          ),
            bodyLarge: TextStyle(
              fontSize: 50
            )
      )
      ),
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  double Sum=0;
  Map<String,double> FormValue = {
    'Num1':0,'Num2':0,'Num3':0
  };
  @override
  Widget build(BuildContext context) {

    MyInputOnChange(InputKey,InputValue){
      setState(() {
        FormValue.update(InputKey, (value) => double.parse(InputValue));
      });
    }
AddAllNum(){
      setState((){
        Sum = FormValue['Num1']!+FormValue['Num2']!+FormValue['Num3']!;
      });

}

    return Scaffold(
      appBar: AppBar(
        title: Text('Add'),
      ),
      body: Padding(
        padding: EdgeInsets.all(40),
        child: Column(
          children: [
            Text(Sum.toString(),style: HeadTextStyle(),),
            TextFormField(onChanged: (value){
              MyInputOnChange("Num1", value);
            },
              decoration: AppInputStyle('First'),),
            SizedBox(
              height: 10,
            ),
            TextFormField(onChanged: (value){
              MyInputOnChange("Num2", value);
            },decoration: AppInputStyle('Second'),),
            SizedBox(
              height: 10,
            ), TextFormField(onChanged: (value){
              MyInputOnChange("Num3", value);
            },decoration: AppInputStyle('Third'),),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,

              child: ElevatedButton(onPressed: () {
AddAllNum();
              },
                child: Text('Add'),
style: buttonStyle(),
            ),
            ),
            ElevatedButton(onPressed: (){}, child: Text('press')),
            ElevatedButton(onPressed: (){
              
              showModalBottomSheet(
                isDismissible: true,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      topLeft: Radius.circular(10),
                    )
                  ),
                  barrierColor: Colors.red,
                  context: context, builder: (context){

                return Column(
                  children: [
                    Text('Hello World')
                  ],
                );
              });
            }, child: Text('press me',style: Theme.of(context).textTheme.bodyLarge,)),
            Switch(value: true, onChanged: (value){

            })
          ],
        ),
      ),
    );
  }
}
