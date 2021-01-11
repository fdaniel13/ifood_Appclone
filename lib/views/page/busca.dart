import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Busca extends StatefulWidget {
  @override
  _BuscaState createState() => _BuscaState();
}

class _BuscaState extends State<Busca> {

  List<String> categorias =[
    'Mercado','Vale-refeição',
    'Lanches','Entrega Parceira','Super Restaurante',
    'Chinesa','Brasileira','Saudavel',
    'Bebidas','Arabe','Sorvetes','Mexicana','Peixes'
  ];

  @override
  Widget build(BuildContext context) {
    final W = MediaQuery.of(context).size.width;
    final H = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar:PreferredSize(
          child: Container(
          width: W,
          height: H*0.15,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: W*0.95,
                  height: H*0.07,

                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(W*0.02)
                  ),
                  child: TextFormField(

                    decoration: InputDecoration(
                          border: InputBorder.none,
                          icon: Icon(Icons.search,
                          size: H*0.04,
                          color: Colors.red,
                        ),
                        hintText:'Item ou loja',
                      ),
                  ),
                ),
              ],
            ),

          ),
          preferredSize: Size.fromHeight(H*0.2)),
      body:SingleChildScrollView(
        child: Container(
            width: W,
            height: 1.23*H,
            padding: EdgeInsets.only(left:H*0.03,right:H*0.03,top: H*0.03 ),
            child: Column(
              children: [
                Container(
                  width: W,
                  height: H*0.15,

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Buscas Recentes',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: H*0.025,
                          color: Colors.grey[700]
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 1.05*H,
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),

                    itemCount:(categorias.length~/2)+1,
                    itemBuilder: (context,index){
                      return Container(
                        width: W*0.4,
                        height: H*0.15,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: H*0.01),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: W*0.4,
                                height: H*0.12,

                                child: Padding(
                                  padding: EdgeInsets.all(H*0.02),
                                  child: Text(
                                    categorias[2*index],
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.red[400],
                                  borderRadius: BorderRadius.circular(H*0.02)
                                ),

                              ),
                              2*(index+1)<categorias.length ?
                              Container(
                                width: W*0.4,
                                height: H*0.12,
                                decoration: BoxDecoration(
                                    color: Colors.red[400],
                                    borderRadius: BorderRadius.circular(H*0.02)
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(H*0.02),
                                  child: Text(
                                    categorias[2*index+1],
                                  ),
                                ),
                              ) :
                              Container(
                                width: W*0.4,
                                height: H*0.12,

                              ) ,
                            ],
                          ),
                        ),
                      );
                    },

                  ),
                ),
              ],
            )
        ),
      )

    );
  }
}
