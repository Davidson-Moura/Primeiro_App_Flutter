import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title:'Frases do dia',
    home: Home(),
  ));
}

class Home extends StatefulWidget{
  @override
  _HomeState  createState() => _HomeState();
}
class _HomeState extends State<Home>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Frase do dia"),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(padding: EdgeInsets.all(10),child: Text("Frase",
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Colors.black
                ),
              )
            ),
            FloatingActionButton(onPressed: (){},child: Text("Gerar"),backgroundColor: Colors.pinkAccent,),
          ],
        ),
      ),
    );
  }
}
