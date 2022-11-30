import 'package:flutter/material.dart';

class   CarroWidget extends StatelessWidget {

  final String marca;
  final String modelo;
  final String foto;

  CarroWidget(this.marca, this.modelo, this.foto);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, //Inifinty é pra ocupar a largura toda disponivel
      //height: 200,

      //Margem
      margin: EdgeInsets.all(20),//Todas as margens com 20, cima baixo esquerda direita
      //margin: EdgeInsets.symmetric(horizontal: 20),
      //margin: EdgeInsets.symmetric(vertical: 20),
      //margin: EdgeInsets.only(left: 30),
      //margin: EdgeInsets.fromLTRB(10, 20, 30, 40),

      //Espaçamento entre o conteudo do conteiner e seu tamanho
      padding: EdgeInsets.all(20),

      //Borda
      decoration: BoxDecoration(
        color: Colors.grey[400],
        border: Border.all(color: Colors.grey[600],width: 2,),
        borderRadius: BorderRadius.all(Radius.circular(10)),
        gradient: LinearGradient(
          colors:[Colors.grey[400], Colors.white, Colors.grey[400]],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          ),
          
      ),

      child: Column(
        children: [
          Text(marca, style: Theme.of(context).textTheme.headline2,),
          Text(modelo, style: Theme.of(context).textTheme.headline3,),
          Image.asset(foto),
        ],
      ),
    );
  }
}