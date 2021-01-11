import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'Perfil.dart';
import 'package:ifood_clone/views/page/pedidos.dart';
import 'package:flutter/services.dart';
import 'busca.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


  String l = 'home';


  
  void f(value){
    setState(() => l = value);
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,DeviceOrientation.portraitDown
    ]);
    return Scaffold(
      body:estado(l,context),

      bottomNavigationBar:BottomAppBarCustom(f) ,
    );






  }
}


Widget estado(String l,context){

  switch(l) {
    case 'home': return defaultTabControllerCustom(context);
    break;
    case 'user': return Perfil();
    break;
    case 'pedido': return Pedido();
    break;
    case 'busca':return Busca();
    break;
    default: return defaultTabControllerCustom(context);
    break;
  }

}

Widget defaultTabControllerCustom(context){

  return DefaultTabController(
      length: 2,
      child:Scaffold(

        appBar: AppBar(
          leadingWidth: 150,

          backgroundColor: Colors.white,
          leading: Center(child: Text( 'Conj.Boa Vista Qu.10,78',
          style: TextStyle(
            color: Color(0xff5D5D5D),
            fontWeight: FontWeight.bold,
            fontSize: 10.96
          ),
          )),
          actions: [
            IconButton(

                iconSize: 30,
                icon: Icon(Icons.qr_code,
                  color: Colors.red,
                ),
                onPressed: null)

          ],
          toolbarHeight: 90,
          bottom:TabBar(
            indicatorColor: Colors.red,
            labelPadding: EdgeInsets.zero,
            labelStyle: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,

            ),
            tabs: [
              Align(
                alignment: Alignment.centerLeft,
                child:  Tab(

                  child: Text(
                      'Restaurantes',
                    style: TextStyle(
                      color: Color(0xff5D5D5D),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Tab(

                  child: Text(
                    'Mercados',
                    style: TextStyle(
                      color: Color(0xff5D5D5D),
                    ),
                  ),
                ),
              )

            ],
          ),
        ),
        body: TabBarView(
          children: [

            SingleChildScrollView(
              child: Container(
                  height: MediaQuery.of(context).size.height*2.05,
                  width: MediaQuery.of(context).size.width,
                  child: Column(

                    children: [
                      SizedBox(
                        height: 60,
                        width: double.infinity,
                        child: listCustom(),
                      ),
                      SizedBox(
                        height: 150,

                        child: //sliderCustom()
                          listCustomSec(),

                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:25.0,bottom: 25),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width*1.80,
                          height: 140,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left:MediaQuery.of(context).size.width*0.02),
                                child: Container(
                                  width: MediaQuery.of(context).size.width*0.8,
                                  height: 70,
                                  decoration: BoxDecoration(
                                      color: Colors.red[400],
                                      borderRadius: BorderRadiusDirectional.circular(MediaQuery.of(context).size.width*0.06)
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left:MediaQuery.of(context).size.width*0.06,right: MediaQuery.of(context).size.width*0.06),
                                child: Container(
                                  width: MediaQuery.of(context).size.width*0.8,
                                  height: 70,
                                  decoration: BoxDecoration(
                                      color:Colors.red[400],
                                      borderRadius: BorderRadiusDirectional.circular(MediaQuery.of(context).size.width*0.06)
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: MediaQuery.of(context).size.width*0.06),
                                child: Container(
                                  width: MediaQuery.of(context).size.width*0.8,
                                  height: 70,
                                  decoration: BoxDecoration(
                                      color:Colors.red[400],
                                      borderRadius: BorderRadiusDirectional.circular(MediaQuery.of(context).size.width*0.06)
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding:EdgeInsets.only(top:MediaQuery.of(context).size.height*0.04,bottom:MediaQuery.of(context).size.height*0.04 ),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height*0.08,
                          padding: EdgeInsets.only(left:MediaQuery.of(context).size.width*0.02),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('Ultimas Lojas',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 25),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width*1.80,
                          height: 90,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left:MediaQuery.of(context).size.width*0.02),
                                child: Container(
                                  width: MediaQuery.of(context).size.width*0.6,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      color: Colors.red[400],
                                      borderRadius: BorderRadiusDirectional.circular(MediaQuery.of(context).size.width*0.06)
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left:MediaQuery.of(context).size.width*0.06,right: MediaQuery.of(context).size.width*0.06),
                                child: Container(
                                  width: MediaQuery.of(context).size.width*0.6,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      color:Colors.red[400],
                                      borderRadius: BorderRadiusDirectional.circular(MediaQuery.of(context).size.width*0.06)
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: MediaQuery.of(context).size.width*0.06),
                                child: Container(
                                  width: MediaQuery.of(context).size.width*0.6,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      color:Colors.red[400],
                                      borderRadius: BorderRadiusDirectional.circular(MediaQuery.of(context).size.width*0.06)
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding:EdgeInsets.only(top:MediaQuery.of(context).size.height*0.04,bottom:MediaQuery.of(context).size.height*0.04 ),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height*0.08,
                          padding: EdgeInsets.only(left:MediaQuery.of(context).size.width*0.02),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('Lojas',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height*0.9,
                          child: ListView(
                            physics: NeverScrollableScrollPhysics(),
                            children: [
                              Container(

                                width: MediaQuery.of(context).size.width*0.4,
                                height: MediaQuery.of(context).size.height*0.1,
                                padding:  EdgeInsets.only(left:MediaQuery.of(context).size.width*0.02),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius: BorderRadiusDirectional.circular(50)
                                        )
                                    ),
                                    Padding(padding: EdgeInsets.only(left: 10),
                                      child: Text(
                                        'Restaurante 1',
                                        style: TextStyle(
                                            fontSize: 15
                                        ),
                                      ),

                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding:  EdgeInsets.only(top:MediaQuery.of(context).size.width*0.05),
                                child: Container(

                                  width: MediaQuery.of(context).size.width,
                                  height: MediaQuery.of(context).size.height*0.1,
                                  padding:  EdgeInsets.only(left:MediaQuery.of(context).size.width*0.02),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                          height: 50,
                                          width: 50,
                                          decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius: BorderRadiusDirectional.circular(50)
                                          )
                                      ),
                                      Padding(padding: EdgeInsets.only(left: 10),
                                        child: Text(
                                          'Restaurante 2',
                                          style: TextStyle(
                                              fontSize: 15
                                          ),
                                        ),

                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding:  EdgeInsets.only(top:MediaQuery.of(context).size.width*0.05),
                                child: Container(

                                  width: MediaQuery.of(context).size.width,
                                  height: MediaQuery.of(context).size.height*0.1,
                                  padding:  EdgeInsets.only(left:MediaQuery.of(context).size.width*0.02),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                          height: 50,
                                          width: 50,
                                          decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius: BorderRadiusDirectional.circular(50)
                                          )
                                      ),
                                      Padding(padding: EdgeInsets.only(left: 10),
                                        child: Text(
                                          'Restaurante 3',
                                          style: TextStyle(
                                              fontSize: 15
                                          ),
                                        ),

                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding:  EdgeInsets.only(top:MediaQuery.of(context).size.width*0.05),
                                child: Container(

                                  width: MediaQuery.of(context).size.width,
                                  height: MediaQuery.of(context).size.height*0.1,
                                  padding:  EdgeInsets.only(left:MediaQuery.of(context).size.width*0.02),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                          height: 50,
                                          width: 50,
                                          decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius: BorderRadiusDirectional.circular(50)
                                          )
                                      ),
                                      Padding(padding: EdgeInsets.only(left: 10),
                                        child: Text(
                                          'Restaurante 4',
                                          style: TextStyle(
                                              fontSize: 15
                                          ),
                                        ),

                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding:  EdgeInsets.only(top:MediaQuery.of(context).size.width*0.05),
                                child: Container(

                                  width: MediaQuery.of(context).size.width,
                                  height: MediaQuery.of(context).size.height*0.1,
                                  padding:  EdgeInsets.only(left:MediaQuery.of(context).size.width*0.02),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                          height: 50,
                                          width: 50,
                                          decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius: BorderRadiusDirectional.circular(50)
                                          )
                                      ),
                                      Padding(padding: EdgeInsets.only(left: 10),
                                        child: Text(
                                          'Restaurante 5',
                                          style: TextStyle(
                                              fontSize: 15
                                          ),
                                        ),

                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding:  EdgeInsets.only(top:MediaQuery.of(context).size.width*0.05),
                                child: Container(

                                  width: MediaQuery.of(context).size.width,
                                  height: MediaQuery.of(context).size.height*0.1,
                                  padding:  EdgeInsets.only(left:MediaQuery.of(context).size.width*0.02),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                          height: 50,
                                          width: 50,
                                          decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius: BorderRadiusDirectional.circular(50)
                                          )
                                      ),
                                      Padding(padding: EdgeInsets.only(left: 10),
                                        child: Text(
                                          'Restaurante 6',
                                          style: TextStyle(
                                              fontSize: 15
                                          ),
                                        ),

                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding:  EdgeInsets.only(top:MediaQuery.of(context).size.width*0.05),
                                child: Container(

                                  width: MediaQuery.of(context).size.width,
                                  height: MediaQuery.of(context).size.height*0.1,
                                  padding:  EdgeInsets.only(left:MediaQuery.of(context).size.width*0.02),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                          height: 50,
                                          width: 50,
                                          decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius: BorderRadiusDirectional.circular(50)
                                          )
                                      ),
                                      Padding(padding: EdgeInsets.only(left: 10),
                                        child: Text(
                                          'Restaurante 7',
                                          style: TextStyle(
                                              fontSize: 15
                                          ),
                                        ),

                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )
                      )

                    ],
                  )),
            ),


            SingleChildScrollView(
              child: Container(
                height: MediaQuery.of(context).size.height*1.05,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(

                      width: MediaQuery.of(context).size.width,
                      height: 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 100,
                            height: 150,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 70,
                                  height: 40,

                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                    borderRadius: BorderRadius.circular(5)
                                  ),
                                ),
                                Padding(
                                  padding:  EdgeInsets.only(top:2.0),
                                  child: Text('Conveniências'),
                                ),
                              ],
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.only(left:1),
                            child:  Container(

                              width: 100,
                              height: 150,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 70,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(5)
                                    ),
                                  ),
                                  Padding(
                                    padding:  EdgeInsets.only(top:2.0),
                                    child: Text('Bebidas'),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:25.0,bottom: 25),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width*1.80,
                        height: 140,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left:MediaQuery.of(context).size.width*0.02),
                              child: Container(
                                width: MediaQuery.of(context).size.width*0.8,
                                height: 70,
                                decoration: BoxDecoration(
                                    color: Colors.red[400],
                                  borderRadius: BorderRadiusDirectional.circular(MediaQuery.of(context).size.width*0.06)
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left:MediaQuery.of(context).size.width*0.06,right: MediaQuery.of(context).size.width*0.06),
                              child: Container(
                                width: MediaQuery.of(context).size.width*0.8,
                                height: 70,
                                decoration: BoxDecoration(
                                  color:Colors.red[400],
                                    borderRadius: BorderRadiusDirectional.circular(MediaQuery.of(context).size.width*0.06)
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),

                    Padding(
                      padding:EdgeInsets.only(top:MediaQuery.of(context).size.height*0.04,bottom:MediaQuery.of(context).size.height*0.04 ),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height*0.08,
                        padding: EdgeInsets.only(left:MediaQuery.of(context).size.width*0.02),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Mais Pedidos',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20
                            ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height*0.4,
                      child: ListView(
                        physics: NeverScrollableScrollPhysics(),
                        children: [
                          Container(

                            width: MediaQuery.of(context).size.width*0.4,
                            height: MediaQuery.of(context).size.height*0.1,
                            padding:  EdgeInsets.only(left:MediaQuery.of(context).size.width*0.02),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadiusDirectional.circular(50)
                                    )
                                ),
                                Padding(padding: EdgeInsets.only(left: 10),
                                  child: Text(
                                    'Restaurante 1',
                                    style: TextStyle(
                                        fontSize: 15
                                    ),
                                  ),

                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(top:MediaQuery.of(context).size.width*0.05),
                            child: Container(

                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height*0.1,
                              padding:  EdgeInsets.only(left:MediaQuery.of(context).size.width*0.02),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius: BorderRadiusDirectional.circular(50)
                                      )
                                  ),
                                  Padding(padding: EdgeInsets.only(left: 10),
                                    child: Text(
                                      'Restaurante 2',
                                      style: TextStyle(
                                          fontSize: 15
                                      ),
                                    ),

                                  )
                                ],
                              ),
                            ),
                          ),

                          Padding(
                            padding:  EdgeInsets.only(top:MediaQuery.of(context).size.width*0.05),
                            child: Container(

                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height*0.1,
                              padding:  EdgeInsets.only(left:MediaQuery.of(context).size.width*0.02),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius: BorderRadiusDirectional.circular(50)
                                      )
                                  ),
                                  Padding(padding: EdgeInsets.only(left: 10),
                                    child: Text(
                                      'Restaurante 3',
                                      style: TextStyle(
                                          fontSize: 15
                                      ),
                                    ),

                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    )
                  ],
                ),

              ),
            )
          ],
        ),


      )

  );
}


Widget BottomAppBarCustom(var l){

  double _iconT=35;
  double _textT=10;
  return
      Container(
      height: 69,
      decoration: BoxDecoration(
          border:Border(
            top: BorderSide(
                width: .7,
                color: Color.fromRGBO(0, 0, 0, 0.3)
            ),
            bottom:  BorderSide(
                width: 1,
                color: Color.fromRGBO(0, 0, 0, 0.3)
            ),
          )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                iconSize: _iconT,
                icon: Icon(Icons.home,
                  color: Color.fromRGBO(1, 1, 1, 0.4),
                ),
                onPressed:  (){
                      l('home');
                },
                focusColor: Colors.black,

              ),
              Text('Inicio',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                  fontSize: _textT
                ),
              ),
            ],
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                iconSize: _iconT,
                icon: Icon(
                  Icons.search,
                  color: Color.fromRGBO(1, 1, 1, 0.4),
                ),
                onPressed:  (){
                  l('busca');

                },
                focusColor: Colors.black,

              ),
              Text('Busca',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: _textT
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                iconSize: _iconT,
                icon: Icon(
                  Icons.list,
                  color: Color.fromRGBO(1, 1, 1, 0.4),
                ),
                onPressed:  (){
                  l('pedido');
                },
                focusColor: Colors.black,

              ),
              Text('Pedidos',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: _textT
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                iconSize: _iconT,
                icon: Icon(
                  Icons.supervised_user_circle,
                  color: Color.fromRGBO(1, 1, 1, 0.4),
                ),
                onPressed:  (){
                  
                  l('user');
                },
                focusColor: Colors.black,

              ),
              Text('Perfil',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: _textT
                ),
              ),
            ],
          ),
        ],
      ),

    );
}


Widget listCustom(){

  List<String> item =[
    'Filtros','Pra retirar','Ordenar','Entrega gratís','Vale-refeição',
    'Distancia','Entrega Parceira','Super Restaurante'
  ];

  return ListView.builder(
      itemCount: item.length,
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemBuilder: (contextList,index){
        return Padding(padding: EdgeInsets.all(5),
          child: Container(

              //width: 120,


              decoration: BoxDecoration(
                //color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                      style: BorderStyle.solid,
                      color: Color(0xffBABABA)
                  )

              ),
              child: GestureDetector(
                  child:Center(
                    child: Padding(
                        padding: EdgeInsets.all(10),
                    child:Row(

                      children: [
                        Text(
                          '${item[index]}',
                          style: TextStyle(
                            color: Color(0xff5D5D5D),
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        )
                      ],
                    )
                    )
                  )
              )
          ),
        );
      }

  );
}

Widget listCustomSec(){


  List<String> item =[
    'Mercado','Vale-refeição',
    'Lanches','Entrega Parceira','Super Restaurante'
  ];

  return ListView.builder(
      itemCount: item.length,
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemBuilder: (contextList,index){
        return Padding(padding: EdgeInsets.all(5),
          child: GestureDetector(
            child:Column(

              children: [
                Container(
                width: 100,
                height: 50,
              ),
                Container(
                width: 100,
                height: 50,

                decoration: BoxDecoration(
                  color: (index%2==0 ||index==0)?Color(0xff9FC973):Colors.purple,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
                Text(
                  '${item[index]}',
                  style: TextStyle(
                    color: Color(0xff5D5D5D),
                    fontSize: 12,
                  ),
                ),
              ]
          ),
         )
        );
      }

  );
}

Widget sliderCustom(){


  List<String> item =[
    'Mercado','Vale-refeição',
    'Lanches','Entrega Parceira','Super Restaurante'
  ];

  List<Widget> items=[
    Text('109')
  ];

  CarouselSlider(
      items: items,
      options: CarouselOptions(
        height: 400,
        aspectRatio: 16/9,
        viewportFraction: 0.8,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
      )
  );
  return CarouselSlider.builder(
      itemCount: item.length,
      itemBuilder: (contextList, index){
    return Padding(padding: EdgeInsets.all(5),
        child: GestureDetector(
          child: Column(

              children: [
                Container(
                  width: 100,
                  height: 50,
                ),
                Container(
                  width: 100,
                  height: 50,

                  decoration: BoxDecoration(
                    color: (index % 2 == 0 || index == 0)
                        ? Color(0xff9FC973)
                        : Colors.purple,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Text(
                  '${item[index]}',
                  style: TextStyle(
                    color: Color(0xff5D5D5D),
                    fontSize: 12,
                  ),
                ),
              ]
          ),
        )
    );
      }
  );
}