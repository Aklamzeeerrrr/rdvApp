import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './views/persoPage1.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  )
);

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 243, 243, 1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        elevation: 0,
        leading:  IconButton(
          icon: Icon(Icons.menu, color: Colors.black87,),
          onPressed: () {},
        ),
      ),
      body: SafeArea(
       child: SingleChildScrollView(
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: <Widget>[
             Container(
               width: double.infinity,
               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.vertical(bottom: Radius.circular(30.0)),
               ),
               padding: EdgeInsets.all(20.0),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: <Widget>[
                   Text("Prenez votre", style: TextStyle(color: Colors.black87, fontSize: 25),),
                   SizedBox(
                     height: 5,
                   ),
                   Text('RDV', style: TextStyle(color: Colors.black87, fontSize: 40),),
                   SizedBox(
                     height: 20,
                   ),
                   Container(
                     padding : EdgeInsets.all(5),
                     decoration: BoxDecoration(
                       color: Color.fromRGBO(244, 243, 243, 1),
                       borderRadius: BorderRadius.circular(15),
                     ),
                     child: TextField(
                       decoration: InputDecoration(
                         border: InputBorder.none,
                         prefixIcon: Icon(Icons.search, color: Colors.black87,),
                         hintText: "Que recherchez-vous ?",
                         hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                       ),
                     ),
                   ),
                   SizedBox(
                     height: 10,
                   ),
                 ],
               ),
             ),
             SizedBox(
               height: 20,
             ),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal : 20.0),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: <Widget>[
                   Text('Prestation de Personnes ', style: TextStyle(fontSize: 15 , fontWeight: FontWeight.bold),),
                   SizedBox( height: 15.0),
                   Container(
                     height: 200,
                     child: ListView(
                       scrollDirection: Axis.horizontal,
                       children: <Widget>[
                         InkWell(
                             child: promoCard(image :'assets/one.jpg', title : 'Restauratrice'),
                             onTap : () {
                               Navigator.push(context,
                               MaterialPageRoute (builder: (context){
                                 return persoPage1();
                               }));
                             },
                         ),
                         InkWell(
                             child: promoCard(image :'assets/two.jpg', title: 'Chirurgien')
                         ),
                         InkWell(
                             child: promoCard(image : 'assets/three.jpg', title: 'Ophtamologue')
                         ),
                         InkWell(
                             child: promoCard(image : 'assets/four.jpg', title: 'Esthéticien')
                         ),
                         InkWell(
                             child: promoCard(image :'assets/five.jpg', title: 'Phamarcien'),
                         ),
                       ],
                     ),
                   ),
                   SizedBox(
                     height: 20,
                   ),
                 ],
               ),
             ),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal : 20.0),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: <Widget>[
                   Text("Prestation d'Organisations", style: TextStyle(fontSize: 15 , fontWeight: FontWeight.bold),),
                   SizedBox( height: 15.0),
                   Container(
                     height: 200,
                     child: ListView(
                       scrollDirection: Axis.horizontal,
                       children: <Widget>[
                         InkWell(
                           child: promoCard(image :'assets/six.jpg', title: 'BAD'),

                         ),
                         InkWell(
                             child: promoCard(image : 'assets/seven.jpg', title: 'BCAO'),
                         ),
                         InkWell(
                             child: promoCard(image : 'assets/height.jpg', title: 'UFB'),
                         ),
                         InkWell(
                             child: promoCard(image : 'assets/nine.jpg', title : 'Banque'),
                         ),
                         InkWell(
                             child: promoCard(image :'assets/ten.jpg', title : 'Hopitale'),
                         ),
                       ],
                     ),
                   ),
                   SizedBox(
                     height: 20,
                   ),
                 ],
               ),

             ),
           ],
         ),
       ),
      ),
    );
  }

  Widget promoCard({image, title}){
    return AspectRatio(
      aspectRatio: 2.62/3, // Agrandir la margeur des differentes images
      child: Container(
        margin: EdgeInsets.only(right: 15.0), //Séparer les éléments de la listview
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  stops: [0.1,0.9],
                  colors : [
                    Colors.black.withOpacity(.8),
                    Colors.black.withOpacity(.1)
                  ]
              )
          ),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(title, style: TextStyle(color: Colors.white, fontSize: 20.0),),
          ),
        ),
      ),
    );
  }


}
