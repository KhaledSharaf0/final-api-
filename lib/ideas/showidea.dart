import 'package:flutter/material.dart';
import 'package:finalapi/controller/database_helper.dart';
import 'package:finalapi/ideas/dashboard.dart';
import 'package:finalapi/ideas/editidea.dart';



class ShowData extends StatefulWidget{

  List list;
  int index;
  ShowData({this.index , this.list}) ;


  @override
  ShowDataState  createState() => ShowDataState();
}

class ShowDataState extends State<ShowData> {
  DatabaseHelper databaseHelper = new DatabaseHelper();

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Show Idea',
      home: Scaffold(
        appBar: AppBar(
          title:  Text('Show Idea'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: ()=>Navigator.of(context).push(
                  new MaterialPageRoute(
                    builder: (BuildContext context) => new Dashboard(),
                  )
              ),
            )
          ],
        ),



        body: Container(
          child: ListView(
            padding: const EdgeInsets.only(top: 62,left: 12.0,right: 12.0,bottom: 12.0),
            children: <Widget>[

              Container(
                height: 50,
                child: new Text(
                  "Idea Title : ${ widget.list[widget.index]['title']}",
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),


              new Padding(padding: new EdgeInsets.only(top: 44.0),),
              Container(
                height: 50,
                child: new Text(
                  "Idea Catagory : ${widget.list[widget.index]['ideacatagory']}",
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),

              new Padding(padding: new EdgeInsets.only(top: 44.0),),
              Container(
                height: 50,
                child: new Text(
                  "Funding : ${widget.list[widget.index]['funding']}",
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),


              new Padding(padding: new EdgeInsets.only(top: 44.0),),
              Container(
                height: 50,
                child: new Text(
                  "Management Type : ${widget.list[widget.index]['Management']}",
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),


              new Padding(padding: new EdgeInsets.only(top: 44.0),),
              Container(
                height: 50,
                child: new Text(
                  "Address : ${widget.list[widget.index]['address']}",
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),


              new Padding(padding: new EdgeInsets.only(top: 44.0),),
              Container(
                height: 50,
                child: new Text(
                  "Idea Description : ${widget.list[widget.index]['ideaDescription']}",
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              new Padding(padding: new EdgeInsets.only(top: 44.0),),

              Container(
                height: 50,
                child: new Text(
                  " Created at : ${widget.list[widget.index]['created_at']}",
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),

              Container(
                height: 50,
                child: new Text(
                  " Updated at : ${widget.list[widget.index]['updated_at']}",
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),


              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 50,
                    child: new RaisedButton(
                      elevation: 20.0,
                      onPressed: ()=>Navigator.of(context).push(
                          new MaterialPageRoute(
                            builder: (BuildContext context) => new EditData(list:widget.list , index:widget.index),
                          )
                      ),
                      padding: EdgeInsets.all(15.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      color: Color(0xFF0a2f52),
                      child: new Text(
                        'Edit',
                        style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 1.5,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'OpenSans',
                        ),
                      ),
                    ),
                  ),

                  Container(
                    height: 50,
                    child: new RaisedButton(
                      elevation: 20.0,
                      onPressed: (){
                        databaseHelper.deleteData(widget.list[widget.index]['id']);
                        Navigator.of(context).push(
                            new MaterialPageRoute(
                              builder: (BuildContext context) => new Dashboard(),
                            )
                        );
                      },
                      padding: EdgeInsets.all(15.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      color: Color(0xFF0a2f52),
                      child: new Text(
                        'Delete',
                        style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 1.5,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'OpenSans',
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }



//  void _showDialog(){
//    showDialog(
//        context:context ,
//        builder:(BuildContext context){
//          return AlertDialog(
//            title: new Text('Failed'),
//            content:  new Text('Check your email or password'),
//            actions: <Widget>[
//              new RaisedButton(
//
//                child: new Text(
//                  'Close',
//                ),
//
//                onPressed: (){
//                  Navigator.of(context).pop();
//                },
//
//              ),
//            ],
//          );
//        }
//    );
//  }
}