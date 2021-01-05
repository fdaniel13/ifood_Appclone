import 'package:flutter/material.dart';



class Pedido extends StatefulWidget {
  @override
  _PedidoState createState() => _PedidoState();
}

class _PedidoState extends State<Pedido> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(

      slivers: [
       SliverList(
           delegate:SliverChildBuilderDelegate(
               (_,index){
                 return pageP(context);
               },childCount: 1
           )
       )
      ],

    );
  }
}


Widget pageP (context){
  final W = MediaQuery.of(context).size.width;
  final H = MediaQuery.of(context).size.height;

  return Container(
    width: W,
    height: H,
    decoration: BoxDecoration(
      border: Border.all(
          color: Color(0xffDFDFDF),
          width: H*0.002
      )
    ),
    child: Padding(
      padding: EdgeInsets.all(W*0.03),
      child: Column(

        children: [
          Container(
            width: W,
            height: H*0.15,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Meus Pedidos',
                  style: TextStyle(
                    fontSize:H*0.04,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: W,
            height: H*0.2,
            decoration: BoxDecoration(

              border: Border.all(
                  color: Color(0xffDFDFDF),
                  width: H*0.002
              ),
              borderRadius: BorderRadius.circular(W*0.03)
            ),
            child: Padding(
              padding:  EdgeInsets.all(W*0.03),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Peça de novo',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: H*0.03
                      ),
                    ),
                    Container(
                      width: W,
                      height:H*0.08,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(W*0.02)
                      ),
                      child: Center(
                        child: Text(
                          'Adicionar a sacola',
                          style: TextStyle(
                              fontSize: H*0.029,
                              color: Colors.white
                          ),
                        ),
                      ),
                    )
                  ],
                ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top:H*0.1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                  Text('Mais Pedidos Pra você',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: H*0.03
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(top: H*0.02),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: W*0.3,
                          height: H*0.2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(W*0.01),
                            border: Border.all(
                                color: Color(0xffDFDFDF),
                                width: H*0.002
                            )
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: W*0.2,
                                height: H*0.1,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.red
                                ),
                              ),
                              Text('Pizzaria')
                            ],
                          ),
                        ),
                        Container(
                          width: W*0.3,
                          height: H*0.2,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(W*0.01),
                              border: Border.all(
                                  color: Color(0xffDFDFDF),
                                  width: H*0.002
                              )
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: W*0.2,
                                height: H*0.1,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.red
                                ),
                              ),
                              Text('Pizzaria')
                            ],
                          ),
                        ),
                        Container(
                          width: W*0.3,
                          height: H*0.2,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(W*0.01),
                              border: Border.all(
                                  color: Color(0xffDFDFDF),
                                  width: H*0.002
                              )
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: W*0.2,
                                height: H*0.1,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.red
                                ),
                              ),
                              Text('Pizzaria')
                            ],
                          ),
                        ),

                      ],
                    ),
                  )
              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(top: H*0.1),
            child: Container(
              width: W,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Historico',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: H*0.03
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ),
  );
}