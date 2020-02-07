import 'package:flutter/material.dart';
import 'package:flutter_ui_afg1/main.dart';


class persoPage1 extends StatefulWidget {
  @override
  _persoPage1State createState() => _persoPage1State();
}

class _persoPage1State extends State<persoPage1> {

  final List<String> _listItem = [
    'assets/one.jpg',
    'assets/two.jpg',
    'assets/three.jpg',
    'assets/four.jpg',
    'assets/five.jpg',
    'assets/six.jpg',
    'assets/seven.jpg',
    'assets/height.jpg',
    'assets/nine.jpg',
    'assets/ten.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading:  IconButton(
          icon: Icon(Icons.arrow_back, ),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute (builder: (context){
                  return HomePage();
                }));
          },
        ),

        //title: Center(child:Text("Home"),),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    image: DecorationImage(
                      image: AssetImage('assets/ten.jpg'),
                      fit: BoxFit.cover,
                    )
                ),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          colors: [
                            Colors.black.withOpacity(.4),
                            Colors.black.withOpacity(.2),
                          ]
                      )
                  ),

                ),
              ),
              SizedBox(height: 20,),
              Expanded(
                child:  GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  children: _listItem.map((item) =>Card(
                    color: Colors.transparent,
                    elevation: 0,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage(item),
                            fit: BoxFit.cover,
                          )
                      ),
                    ),
                  )).toList(),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }

}
