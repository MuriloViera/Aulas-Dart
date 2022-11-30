import 'package:flutter/material.dart';

void main(){

  //Indicar a primeira tela do App que será exibida
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App02',
      home: TelaPrincipal()
    )
  );

}

//
// TELA PRINCIPAL
//

class TelaPrincipal extends StatelessWidget{

  //O método BUILD é responsável por CONSTRUIR os Widgets
  //que serão exibidos na tela

  @override 
  Widget build(BuildContext context){

    return Scaffold( //Scaffold é como se fosse uma estrutura pronta de um app
      
      //HEAD
      appBar: AppBar(
        title: Text('Meu primeiro App'),
        backgroundColor: Colors.red,
        centerTitle: true,
        ),

      backgroundColor: Colors.green,

      //BODY
      body: //O primeiro Column ou Row que eu colocar, ele que sera o meu corpo, ele que vai ocupar tudo, o resto seja Column ou Row
            //Tem que vir dentro dele
      Column( 
        children: [
          Text('Texto 1', style: TextStyle(fontSize: 24)),

          Icon(Icons.pets_outlined),

          Text('Texto 2', style: TextStyle(fontSize: 24)),
          Text('Texto 3', style: TextStyle(fontSize: 24)),

          Row(
            children: [

            Container(
              width: 80,
              height: 80,
              color: Colors.blue,
              child: Column(
                children: [
                  Text('A'),
                  Text('B'),
                  Text('C'),
                ],
                )
            ),

            Column(
              children: [
                Icon(Icons.pets_outlined),
                Icon(Icons.pets_outlined),
                Icon(Icons.pets_outlined),
              ],
              ),

            Container(
              width: 80,
              height: 80,
              color: Colors.black,
            ),
          
            Expanded(
              child: Container(
                width: 80,
                height: 80,
                color: Colors.purple,
              ),
            ),
        ],
      ),

          Expanded(
            child: Container(
              width: 80,
              height: 80,
              color: Colors.white,
            ),
          ),
          
          Text('Texto 4', style: TextStyle(fontSize: 24)),
          ],
        ),
        //Essa Column é o formato do meu BODY
      
      );

  }

}