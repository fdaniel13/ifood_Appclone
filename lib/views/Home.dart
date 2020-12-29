import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var l = 'home';


  
  void f(value){
    setState(() => l = value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:

       l=='home'?
        DefaultTabController(
          length: 2,
          child:Scaffold(

            appBar: AppBar(
              leading: Center(child: Text( 'teste')),
              actions: [
                IconButton(
                    iconSize: 30,
                    icon: Icon(Icons.qr_code),
                    onPressed: null)

              ],
              toolbarHeight: 90,
              bottom:TabBar(
                labelPadding: EdgeInsets.zero,
                labelStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
                tabs: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child:  Tab(
                      text:'Restaurantes',
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Tab(
                        text:'Mercados'
                    ),
                  )

                ],
              ),
            ),
            body: TabBarView(

              children: [
                Container(
                  color: Colors.blue,

                ),

                Container(
                  color: Colors.greenAccent,
                )
              ],
            ),


          )

      ) : l=='user'? Busca():DefaultTabController(
           length: 2,
           child:Scaffold(

             appBar: AppBar(
               leading: Center(child: Text( 'teste')),
               actions: [
                 IconButton(
                     iconSize: 30,
                     icon: Icon(Icons.qr_code),
                     onPressed: null)

               ],
               toolbarHeight: 90,
               bottom:TabBar(
                 labelPadding: EdgeInsets.zero,
                 labelStyle: TextStyle(
                   fontSize: 18,
                   fontWeight: FontWeight.w400,
                 ),
                 tabs: [
                   Align(
                     alignment: Alignment.centerLeft,
                     child:  Tab(
                       text:'Restaurantes',
                     ),
                   ),
                   Align(
                     alignment: Alignment.centerLeft,
                     child: Tab(
                         text:'Mercados'
                     ),
                   )

                 ],
               ),
             ),
             body: TabBarView(

               children: [
                 Container(
                   color: Colors.blue,

                 ),

                 Container(
                   color: Colors.greenAccent,
                 )
               ],
             ),


           )

       ),
      bottomNavigationBar:BottomAppBarCustom(f) ,
    );







  }
}

Widget BottomAppBarCustom(var l){

  return
      Container(
      height: 90,
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
        //crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                iconSize: 45,
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
                    fontWeight: FontWeight.bold
                ),
              ),
            ],
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                iconSize: 45,
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
                    fontWeight: FontWeight.bold
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                iconSize: 45,
                icon: Icon(
                  Icons.list,
                  color: Color.fromRGBO(1, 1, 1, 0.4),
                ),
                onPressed:  (){

                },
                focusColor: Colors.black,

              ),
              Text('Pedidos',
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                iconSize: 45,
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
                    fontWeight: FontWeight.bold
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
