
import 'package:app03/CarroWidget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false, //Pra tirar a faixinha
      title: 'Carros',
      home: TelaPrincipal(),

      theme: ThemeData( //Aqui sou eu criando pre-definições para usar mais tarde ali em baixo
        primaryColor: Colors.blue[900],
        fontFamily: 'Roboto',
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
          headline2: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,), 
          headline3: TextStyle(fontSize: 24, fontStyle: FontStyle.italic),                           

        )
      ),

    )
  );
  
}

//Escreve stl e seleciona ou stateful ou stateless
class TelaPrincipal  extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        title:Text('Lista de Carros', style: Theme.of(context).textTheme.headline1),
        backgroundColor: Theme.of(context).primaryColor, 
        //Theme off é eu falando que algo tem um thema que eu ja declarei la em cima no
        //ThemeData
      ),

      body: SingleChildScrollView(
              child: Column(
          children: [
            CarroWidget('Audi','Q8','lib/Imagens/audi_q8.jpg'),
            CarroWidget('Audi','R8','lib/Imagens/audi_r8.jpg'),
            CarroWidget('BMW','M2','lib/Imagens/bmw_m2.jpg'),
            CarroWidget('Ferrari','488','lib/Imagens/ferrari_488.jpg'),
            CarroWidget('Lamborghini','Huracan','lib/Imagens/lamborghini_huracan.jpg'),
            CarroWidget('Lamborghini','Urus','lib/Imagens/lamborghini_urus.jpg'),
            CarroWidget('Maserati','GTS','lib/Imagens/maserati_gts.jpg'),

          ]
          ),
      ),
      
    );
  }

}