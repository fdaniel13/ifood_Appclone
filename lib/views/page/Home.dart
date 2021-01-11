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

      bottomNavigationBar:BottomAppBarCustom(f,context) ,
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
          leadingWidth: MediaQuery.of(context).size.width*0.4,

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
          toolbarHeight: MediaQuery.of(context).size.height*0.14,
          bottom:TabBar(
            indicatorColor: Colors.red,
            labelPadding: EdgeInsets.zero,
            labelStyle: TextStyle(
              fontSize: MediaQuery.of(context).size.height*0.024,
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
                        height: MediaQuery.of(context).size.height*0.12,
                        width: double.infinity,
                        child: listCustom(context),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height*0.2,

                        child: //sliderCustom()
                          listCustomSec(context),

                      ),
                      Padding(
                        padding: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.012,bottom: MediaQuery.of(context).size.height*0.012),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width*1.80,
                          height: MediaQuery.of(context).size.height*0.2,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left:MediaQuery.of(context).size.width*0.02),
                                child: Container(
                                  width: MediaQuery.of(context).size.width*0.8,
                                  height: MediaQuery.of(context).size.height*0.2,
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
                                  height: MediaQuery.of(context).size.height*0.2,
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
                                  height: MediaQuery.of(context).size.height*0.2,
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
                                    fontSize: MediaQuery.of(context).size.height*0.035
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(bottom: MediaQuery.of(context).size.height*0.012),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width*1.80,
                          height: MediaQuery.of(context).size.height*0.15,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left:MediaQuery.of(context).size.width*0.02),
                                child: Container(
                                  width: MediaQuery.of(context).size.width*0.6,
                                  height: MediaQuery.of(context).size.height*0.1,
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
                                  height: MediaQuery.of(context).size.height*0.1,
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
                                  height: MediaQuery.of(context).size.height*0.1,
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
                                    fontSize: MediaQuery.of(context).size.height*0.035
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
                                        height: MediaQuery.of(context).size.width*0.14,
                                        width: MediaQuery.of(context).size.width*0.14,
                                        decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius: BorderRadiusDirectional.circular(MediaQuery.of(context).size.width*0.14)
                                        )
                                    ),
                                    Padding(padding: EdgeInsets.only(left: MediaQuery.of(context).size.height*0.010),
                                      child: Text(
                                        'Restaurante 1',
                                        style: TextStyle(
                                            fontSize: MediaQuery.of(context).size.height*0.025
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
                                          height: MediaQuery.of(context).size.width*0.14,
                                          width: MediaQuery.of(context).size.width*0.14,
                                          decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius: BorderRadiusDirectional.circular(MediaQuery.of(context).size.width*0.14)
                                          )
                                      ),
                                      Padding(padding: EdgeInsets.only(left: MediaQuery.of(context).size.height*0.01),
                                        child: Text(
                                          'Restaurante 2',
                                          style: TextStyle(
                                              fontSize: MediaQuery.of(context).size.height*0.025
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
                                          height: MediaQuery.of(context).size.width*0.14,
                                          width: MediaQuery.of(context).size.width*0.14,
                                          decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius: BorderRadiusDirectional.circular(MediaQuery.of(context).size.width*0.14)
                                          )
                                      ),
                                      Padding(padding: EdgeInsets.only(left: MediaQuery.of(context).size.height*0.01),
                                        child: Text(
                                          'Restaurante 3',
                                          style: TextStyle(
                                              fontSize: MediaQuery.of(context).size.height*0.025
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
                                          height: MediaQuery.of(context).size.width*0.14,
                                          width: MediaQuery.of(context).size.width*0.14,
                                          decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius: BorderRadiusDirectional.circular(MediaQuery.of(context).size.width*0.14)
                                          )
                                      ),
                                      Padding(padding: EdgeInsets.only(left: MediaQuery.of(context).size.height*0.010),
                                        child: Text(
                                          'Restaurante 4',
                                          style: TextStyle(
                                              fontSize: MediaQuery.of(context).size.height*0.025
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
                                          height: MediaQuery.of(context).size.width*0.14,
                                          width: MediaQuery.of(context).size.width*0.14,
                                          decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius: BorderRadiusDirectional.circular(MediaQuery.of(context).size.width*0.14)
                                          )
                                      ),
                                      Padding(padding: EdgeInsets.only(left: MediaQuery.of(context).size.height*0.01),
                                        child: Text(
                                          'Restaurante 5',
                                          style: TextStyle(
                                              fontSize: MediaQuery.of(context).size.height*0.025
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
                                          height: MediaQuery.of(context).size.width*0.14,
                                          width: MediaQuery.of(context).size.width*0.14,
                                          decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius: BorderRadiusDirectional.circular(MediaQuery.of(context).size.width*0.14)
                                          )
                                      ),
                                      Padding(padding: EdgeInsets.only(left: MediaQuery.of(context).size.height*0.01),
                                        child: Text(
                                          'Restaurante 6',
                                          style: TextStyle(
                                              fontSize: MediaQuery.of(context).size.height*0.025
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
                                          height: MediaQuery.of(context).size.width*0.14,
                                          width: MediaQuery.of(context).size.width*0.14,
                                          decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius: BorderRadiusDirectional.circular(MediaQuery.of(context).size.width*0.14)
                                          )
                                      ),
                                      Padding(padding: EdgeInsets.only(left: MediaQuery.of(context).size.height*0.010),
                                        child: Text(
                                          'Restaurante 7',
                                          style: TextStyle(
                                              fontSize: MediaQuery.of(context).size.height*0.025
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
                      height: MediaQuery.of(context).size.width*0.2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width*0.28,
                            height: MediaQuery.of(context).size.width*0.2,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width*0.2,
                                  height: MediaQuery.of(context).size.width*0.11,

                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                    borderRadius: BorderRadius.circular(MediaQuery.of(context).size.height*0.012)
                                  ),
                                ),
                                Padding(
                                  padding:  EdgeInsets.only(top:MediaQuery.of(context).size.height*0.01),
                                  child: Text('Conveniências'),
                                ),
                              ],
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.only(left:MediaQuery.of(context).size.height*0.005),
                            child:  Container(

                              width: MediaQuery.of(context).size.width*0.28,
                              height: MediaQuery.of(context).size.width*0.2,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width*0.2,
                                    height: MediaQuery.of(context).size.width*0.11,
                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(MediaQuery.of(context).size.height*0.01)
                                    ),
                                  ),
                                  Padding(
                                    padding:  EdgeInsets.only(top:MediaQuery.of(context).size.height*0.01),
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
                      padding: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.05,bottom: MediaQuery.of(context).size.height*0.05),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width*1.80,
                        height: MediaQuery.of(context).size.height*0.2,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left:MediaQuery.of(context).size.width*0.02),
                              child: Container(
                                width: MediaQuery.of(context).size.width*0.8,
                                height: MediaQuery.of(context).size.height*0.2,
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
                                height: MediaQuery.of(context).size.height*0.2,
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
                              fontSize: MediaQuery.of(context).size.height*0.035
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
                                    height: MediaQuery.of(context).size.width*0.14,
                                    width: MediaQuery.of(context).size.width*0.14,
                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadiusDirectional.circular(MediaQuery.of(context).size.width*0.14)
                                    )
                                ),
                                Padding(padding: EdgeInsets.only(left: MediaQuery.of(context).size.height*0.01),
                                  child: Text(
                                    'Restaurante 1',
                                    style: TextStyle(
                                        fontSize: MediaQuery.of(context).size.height*0.025
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
                                      height: MediaQuery.of(context).size.width*0.14,
                                      width: MediaQuery.of(context).size.width*0.14,
                                      decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius: BorderRadiusDirectional.circular(MediaQuery.of(context).size.width*0.14)
                                      )
                                  ),
                                  Padding(padding: EdgeInsets.only(left: MediaQuery.of(context).size.height*0.01),
                                    child: Text(
                                      'Restaurante 2',
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context).size.height*0.025
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
                                      height: MediaQuery.of(context).size.width*0.14,
                                      width: MediaQuery.of(context).size.width*0.14,
                                      decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius: BorderRadiusDirectional.circular(MediaQuery.of(context).size.width*0.14)
                                      )
                                  ),
                                  Padding(padding: EdgeInsets.only(left: MediaQuery.of(context).size.height*0.01),
                                    child: Text(
                                      'Restaurante 3',
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context).size.height*0.025
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


Widget BottomAppBarCustom(var l,context){

  double _iconT=MediaQuery.of(context).size.height*0.07;
  double _textT=MediaQuery.of(context).size.height*0.017;
  return
      Container(
      height: 0.12*MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          border:Border(
            top: BorderSide(
                width: 0.002*MediaQuery.of(context).size.width,
                color: Color.fromRGBO(0, 0, 0, 0.3)
            ),
            bottom:  BorderSide(
                width: 0.002*MediaQuery.of(context).size.width,
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


Widget listCustom(context){

  List<String> item =[
    'Filtros','Pra retirar','Ordenar','Entrega gratís','Vale-refeição',
    'Distancia','Entrega Parceira','Super Restaurante'
  ];

  return ListView.builder(
      itemCount: item.length,
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemBuilder: (contextList,index){
        return Padding(padding: EdgeInsets.all(MediaQuery.of(context).size.width*0.02),
          child: Container(

              //width: 120,


              decoration: BoxDecoration(
                //color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(MediaQuery.of(context).size.width*0.08),
                  border: Border.all(
                      style: BorderStyle.solid,
                      color: Color(0xffBABABA)
                  )

              ),
              child: GestureDetector(
                  child:Center(
                    child: Padding(
                        padding: EdgeInsets.all(MediaQuery.of(context).size.width*0.04),
                    child:Row(

                      children: [
                        Text(
                          '${item[index]}',
                          style: TextStyle(
                            color: Color(0xff5D5D5D),
                            fontSize: MediaQuery.of(context).size.height*0.025,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width*0.1,
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

Widget listCustomSec(context){


  List<String> item =[
    'Mercado','Vale-refeição',
    'Lanches','Entrega Parceira','Super Restaurante'
  ];

  return ListView.builder(
      itemCount: item.length,
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemBuilder: (contextList,index){
        return Padding(padding: EdgeInsets.all(MediaQuery.of(context).size.width*0.02),
          child: GestureDetector(
            child:Column(

              children: [
                Container(
                width: MediaQuery.of(context).size.width*0.2,
                height: MediaQuery.of(context).size.width*0.12,
              ),
                Container(
                width: MediaQuery.of(context).size.width*0.2,
                height: MediaQuery.of(context).size.width*0.12,

                decoration: BoxDecoration(
                  color: (index%2==0 ||index==0)?Color(0xff9FC973):Colors.purple,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
                Text(
                  '${item[index]}',
                  style: TextStyle(
                    color: Color(0xff5D5D5D),
                    fontSize: MediaQuery.of(context).size.height*0.019,
                  ),
                ),
              ]
          ),
         )
        );
      }

  );
}

/*
Widget sliderCustom(context){


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
                  width: MediaQuery.of(context).size.width*0.1,
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
} */