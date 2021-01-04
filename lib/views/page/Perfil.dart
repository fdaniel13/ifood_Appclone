import 'package:flutter/material.dart';


class Perfil extends StatefulWidget {
  @override
  _PerfilState createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {


  List<List> infoP =[
      [Icons.chat,'Chats','Minhas conversas'],
      [Icons.notifications_none,'Notificações','Minha central de notificaçoes'],
      [Icons.account_balance_wallet,'Carteira','meu saldo e QR code'],
      [Icons.confirmation_number,'Cupons','Meus cupons de desconto'],
      [Icons.favorite,'Favoritos','Meus Locais Favoritos'],
      [Icons.payment,'Formas de Pagamento','Minhas formas de pagamento'],
      [ Icons.place, 'Endereços','Meus Endereços de entrega'],
      [Icons.loyalty,'Doações','Minhas doações'],
      [Icons.help,'Ajuda',''],
      [Icons.settings,'Configurações',''],
      [Icons.security,'Segurança',''],
      [Icons.qr_code_rounded,'Usar no Carro',''],
      [Icons.store,'Sugerir Restaurantes','']
  ];


  @override
  Widget build(BuildContext context) {
    double mediaH = MediaQuery.of(context).size.height;
    double mediaW =MediaQuery.of(context).size.width;
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,
        bottom: PreferredSize(
          preferredSize:Size.fromHeight(mediaH*0.06) ,
          child: Container(

            child: GestureDetector(

              child: Padding(
                padding: EdgeInsets.only(left: 10,right: 10,bottom: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.red
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(left: mediaW*0.02),
                        child:Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Text(
                              'Nome Cliente',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,

                                  fontSize: mediaW*0.06
                              ),
                            ),
                            Text(
                              'Meus Dados',
                              style: TextStyle(
                                  fontSize: 15,
                                color:  Color(0xff5D5D5D)
                              ),
                            )
                          ],
                        ) ,
                        )

                      ],
                    ),
                    Icon(Icons.arrow_forward_ios,
                    size: mediaH*0.02,
                    color:Color(0xff9E9E9E) ,)
                  ],
                ),
              ),
            ),
          ),

        ),

      ),
      body: Container(

        child: ListView.builder(
            itemCount: infoP.length,
            itemBuilder: (contextList,index){
              return Padding(
                padding: EdgeInsets.only(
                    right:mediaH*0.02,
                    left:mediaH*0.02,
                ),
                child: Container(
                  height: mediaH*0.12,
                  margin: EdgeInsets.only(top: index==8? mediaH*0.07:0),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                          color: Color(0xffDFDFDF),
                        width: mediaH*0.002
                      )
                    )
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment:  CrossAxisAlignment.center,
                          children: [
                            Icon(
                              infoP[index][0],
                              size: mediaH*0.04,
                                color: Color(0xff5D5D5D)
                            ),
                            Padding(
                              padding:  EdgeInsets.only(left: mediaW*0.04,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  Text(
                                    infoP[index][1],
                                    style: TextStyle(
                                        fontSize: mediaH*0.03,
                                      color: Color(0xff4A4A4A)
                                    ),
                                  ),
                                  index <=7 ? Text(
                                    infoP[index][2],
                                    style: TextStyle(
                                        fontSize: mediaH*0.02,
                                        color: Color(0xff9E9E9E)
                                    ),
                                  ):Container()
                                ],
                              ),
                            ),

                          ],
                        ),
                        Icon(Icons.arrow_forward_ios,
                          size: mediaH*0.02,
                          color:Color(0xff9E9E9E) ,)
                      ],
                    ),
                  ),
                ),
              );
            }

        ),
      ),
    );
  }
}
