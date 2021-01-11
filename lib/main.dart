import 'package:flutter/material.dart';
import 'package:ifood_clone/views/page/Perfil.dart';
import 'package:ifood_clone/views/page/pedidos.dart';
import 'views/page/Home.dart';
import 'views/page/busca.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/':(context)=>Home(),
      '/pedidos':(context)=>Pedido(),
      '/perfil':(context)=>Perfil(),
      '/busca':(context)=>Busca()

    },
    debugShowCheckedModeBanner: false,
  ));
}


