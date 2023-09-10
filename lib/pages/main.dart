import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: MyActivity());
  }
}
class MyActivity extends StatelessWidget {
  const MyActivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              child: Text('Hello'),
              alignment: Alignment.center,

              margin: EdgeInsets.all(10),
              padding: EdgeInsets.symmetric(vertical: 50),
              decoration: BoxDecoration(
                color: Colors.lightGreen,
                // borderRadius: BorderRadius.circular(10),
                // border: Border.all(color: Colors.black,width: 2,style: BorderStyle.solid),
                // borderRadius: BorderRadius.only(topRight: Radius.circular(16),bottomLeft: Radius.circular(16)),
                shape: BoxShape.rectangle

              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: ElevatedButton(

                    onLongPress: (){
                      print('Email Deleted');
                    },
                    onPressed: (){
                  print('Hello World');
                },

                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      textStyle: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,

                      ),
padding: EdgeInsets.all(10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),

                      )

                    ),
                    child: Text('Send Email'),

                ),
              ),
            ),

            TextButton(
                onLongPress: (){
                  print('details');
                },
                onPressed: (){
              print('Resend');
            },
                style: TextButton.styleFrom(

                  textStyle: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.w500,

                  ),
                ),
                child: Text('Text Button')

            ),
            IconButton(

                onPressed: (){}, icon: Icon(Icons.add)),
            OutlinedButton(
                onFocusChange: (value) {

                },
                onLongPress: (){
                  print('fpoijvfdohvofjd');
                },
                onPressed: (){}, child: Text('Outline Button')),
            TextField(
              maxLines: 1,
              style: TextStyle(
                color: Colors.yellow,
              ),
              decoration: InputDecoration(
                hintText: 'abc@mail.com',
                fillColor: Colors.pink,
                filled: true,
                hintStyle: TextStyle(
                  color: Colors.white,
                ),
                suffixIcon: Icon(Icons.mail,color: Colors.white,),
               prefixIcon: Icon(Icons.mail,color: Colors.black,),
               label: Text('Input Mail'),
                labelStyle: TextStyle(
                  color: Colors.deepOrange
                )
              ),
            ),
            SizedBox(height: 10,),
            TextField(

              obscureText: true,
              controller: TextEditingController(),
              style: TextStyle(
                color: Colors.yellow,
              ),
              decoration: InputDecoration(
                  hintText: 'enter your password',
                  fillColor: Colors.pink,
                  filled: true,
                  hintStyle: TextStyle(
                    color: Colors.white,
                  ),
                  suffixIcon: Icon(Icons.password,color: Colors.deepPurple,),
                  prefixIcon: Icon(Icons.password_outlined,color: Colors.black,),
                  label: Text('Password'),
                  labelStyle: TextStyle(
                      color: Colors.deepOrange
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.lightGreen
                    )
                  ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.yellow),
                ),
               focusedBorder: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(20),
               )
              ),
            ),
          ],
        ),
      )
    );
  }
}

