
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyActivity(),);
  }
}

class MyActivity extends StatelessWidget {
   MyActivity({Key? key}) : super(key: key);
   mySnackBar(message,context){
     ScaffoldMessenger.of(context).showSnackBar(
       SnackBar(content: Text(message))
     );
   }
  var MyItems = [
    {'img':'https://cdn.ostad.app/user/avatar/2023-07-21T07-23-55.519Z-581503.jpg','title':'Photo 0'},
    {'img':'https://cdn.ostad.app/user/avatar/2023-07-21T07-23-55.519Z-581503.jpg','title':'Photo 1'},
    {'img':'https://cdn.ostad.app/user/avatar/2023-07-21T07-23-55.519Z-581503.jpg','title':'Photo 2'},
    {'img':'https://cdn.ostad.app/user/avatar/2023-07-21T07-23-55.519Z-581503.jpg','title':'Photo 3'},
    {'img':'https://cdn.ostad.app/user/avatar/2023-07-21T07-23-55.519Z-581503.jpg','title':'Photo 4'},
    {'img':'https://cdn.ostad.app/user/avatar/2023-07-21T07-23-55.519Z-581503.jpg','title':'Photo 5'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Photo Galary'),
        centerTitle: true,
      ),
        body:
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            Text('Welcome to My Photo Gallery'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search anythings',
                  border: OutlineInputBorder()
                ),
              ),
            ),
            Container(
              child: GridView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              crossAxisSpacing: 0,
                childAspectRatio: 1.2
              ),

                  itemCount: MyItems.length,
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: (){
                      mySnackBar(MyItems[index]['title'], context);
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      width: 50,
                      height: 50,
                      child: Image.network(MyItems[index]['img']!,),
                      ),

                    ),


                  )

              ),

            ListTile(
              leading: Icon(Icons.catching_pokemon),
              title: Text('Photo 1'),
              subtitle: Text('Description for photo 1'),
            ),ListTile(
              leading: Icon(Icons.catching_pokemon),
              title: Text('Photo 1'),
              subtitle: Text('Description for photo 1'),
            ),ListTile(
              leading: Icon(Icons.catching_pokemon),
              title: Text('Photo 1'),
              subtitle: Text('Description for photo 1'),
            ),
            Center(
              child: IconButton(onPressed: () {
                mySnackBar("Photos Uploaded Successfully!", context);
              }, icon: Icon(Icons.upload),

              ),
            )
          ],

        )
    );
  }
}


