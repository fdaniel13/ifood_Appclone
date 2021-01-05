import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'page/Perfil.dart';
import 'package:ifood_clone/views/page/pedidos.dart';
import 'package:flutter/services.dart';

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
      body:estado(l),

    /*l=='home'?
           defaultTabControllerCustom()
                : l=='user' ? Pedido()/*Perfil()*/ :defaultTabControllerCustom(),*/
      bottomNavigationBar:BottomAppBarCustom(f) ,
    );






  }
}


Widget estado(String l){

  switch(l) {
    case 'home': return defaultTabControllerCustom();
    break;
    case 'user': return Perfil();
    break;
    case 'pedido': return Pedido();
    break;
    default: return defaultTabControllerCustom();
    break;
  }

}

Widget defaultTabControllerCustom(){

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

            Container(

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

                    )
                  ],
                )),


            Container(

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

class Busca extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.deepOrange,
    );
  }
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