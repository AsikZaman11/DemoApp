
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.green,
        primarySwatch: Colors.deepOrange,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red
          )
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.black,
              elevation: 20,
          shadowColor: Colors.lime
        ),
        textTheme: TextTheme(
          bodyMedium: TextStyle(
            fontSize: 40
          ),
          bodySmall: TextStyle(
            fontSize: 10
          )
        )
      ),
      home: MyActivity(),);
  }
}

class MyActivity extends StatelessWidget {
   MyActivity({Key? key}) : super(key: key);
List<String> st =[
 'asik','azmiron','az'
];


  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var oreantation = MediaQuery.of(context).orientation;
    print(height.runtimeType);
    return Scaffold(
      appBar: AppBar(
        title: Text('Home',style: headLine(context),),
        centerTitle: true,
        actions: [
          Icon(Icons.shopping_cart)
        ],
      ),
        body: Padding(
          padding: EdgeInsets.all(8),
          child: ListView.builder(

          itemCount: 20,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>
                    NumCount(pname: '${index.toString()}',
                    )

                )

                ).then((value) => showDialog(context: context, builder: (context)=>
                AlertDialog(
                  title: Text(value),
                )
                ));
              },
              title: Text(index.toString(),style: Theme.of(context).textTheme.bodySmall,),
            );
          },

            ),
        ),
        // body:Center(
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       Container(
        //         height: 200,
        //         width: 200,
        //         color: Colors.green,
        //         alignment: Alignment.center,
        //         child: AspectRatio(
        //           aspectRatio: 16/9,
        //           child: Container(
        //             color: Colors.black,
        //           ),
        //         ),
        //       ),
        //       Text('Home'),
        //       ElevatedButton(onPressed: (){
        //       Navigator.push(context,MaterialPageRoute(builder: (context)=>SettingScreen()));
        //       }, child: Text('Go to setting')
        //       ),
        //       SizedBox(
        //         height: 5,
        //       ),
        //       ElevatedButton(onPressed: (){
        //          Navigator.push(context, MaterialPageRoute(builder: (context)=>OrderScreen()));
        //
        //       }, child: Text('go to Order'))
        //     ],
        //   ),
        // )


    );
  }
}

class SettingScreen extends StatelessWidget {
  SettingScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Setting'),
          centerTitle: true,
          actions: [
            Icon(Icons.settings)
          ],
        ),
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Setting'),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>OrderScreen()));
              }, child: Text('go to Order')
              ),
              ElevatedButton(onPressed: (){

              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                  builder: (context)=>MyActivity()),
                      (route) => true
              );
              }, child: Text('go back 7777')
              ),
            ],
          ),
        )


    );
  }
}

class OrderScreen extends StatelessWidget {
  OrderScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Order'),
          centerTitle: true,
          actions: [
            Icon(Icons.call)
          ],
        ),
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Order'),
              ElevatedButton(onPressed: (){

                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SettingScreen()));
              }, child: Text('go to setting')
              ),
              ElevatedButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text('go back')
              ),
            ],
          ),
        )


    );
  }
}


TextStyle headLine(context){
  var width = MediaQuery.of(context).size.width;
  if(width<700) {
    return TextStyle(
        color: Colors.black,
        fontSize: 10
    );
  }
    else{
    return TextStyle(
        color: Colors.green,
        fontSize: 34
    );
  }
  }

  class NumCount extends StatelessWidget {
  String? pname;
  int? price;
   NumCount({super.key, required this.pname,this.price});

    @override
    Widget build(BuildContext context) {
      return Center(
        child: Container(
          child: Column(
            children: [
              Text(pname!,style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                backgroundColor: Colors.green,
                color: Colors.pink,

              ),),
              ElevatedButton(onPressed: (){
                Navigator.pop(context,'$pname');
              }, child: Text('Chap Mar')),

            ],
          ),
        ),
      );
    }
  }
