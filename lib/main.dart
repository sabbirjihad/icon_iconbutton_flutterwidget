import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: 'Icon Widget Example',
    theme: ThemeData(primarySwatch: Colors.red),
    home: Scaffold(
      appBar: AppBar(title: Text('Icon Widget Example'),),
      backgroundColor: Colors.grey[300],
      body: MyApp(),
    ),

  ));
}
class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int volumen = 0 ;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 300,
        width: 300,
        color: Colors.red,
        padding: EdgeInsets.only(top: 16),
        child: Column(
          children: [
            Icon(
                Icons.volume_up,
              size: 60,
              color: Colors.green,
            ),
            IconButton(
                icon: Icon(Icons.volume_up,size: 60,color: Colors.greenAccent,),
              onPressed: () {
                  print('On Pressed');
                  setState(() {
                    volumen +=1;
                  });
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  child:
                  Text('$volumen'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
