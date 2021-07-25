import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/text_widget.dart';
import 'article_info.dart';
import 'my_api.dart';

class AllBooks extends StatefulWidget {
  const AllBooks({Key? key}) : super(key: key);
  @override
  _AllBooksState createState() => _AllBooksState();
}

class _AllBooksState extends State<AllBooks> {
  var articles = "";
  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    final double height=MediaQuery.of(context).size.height;
    final double width=MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
          color:Colors.white,
          child: SafeArea(
              child:
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: height*0.02,),
                  Container(
                    padding: const EdgeInsets.only(left:20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            padding: EdgeInsets.zero,
                            constraints: BoxConstraints(),
                            icon:
                            Icon(Icons.arrow_back_ios, color:Color(0xFF363f93)),
                            onPressed:()=> Navigator.pop(context)),
                        IconButton(
                            padding: EdgeInsets.zero,
                            constraints: BoxConstraints(),
                            icon:
                            Icon(Icons.home_outlined, color:Color(0xFF363f93)),
                            onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Container()))),
                      ],
                    ),
                  ),
                  SizedBox(height: 15,),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          //debugPrint(article.img.toString());
                           GestureDetector(
                              onTap:(){
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context)=>Container())
                                );
                              },
                              child:Container(
                                  padding: const EdgeInsets.only(left: 20, right: 20),
                                  height: 250,

                                  child: Stack(
                                    children: [
                                      Positioned(
                                          top:35,
                                          child: new Material (
                                              elevation: 0.0,
                                              child: new Container(
                                                height: 180.0,
                                                width: width*0.9,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.circular(0.0),
                                                  boxShadow: [
                                                    new BoxShadow(
                                                        color: Colors.grey.withOpacity(0.3),
                                                        offset: new Offset(0.0, 0.0),
                                                        blurRadius: 20.0,
                                                        spreadRadius: 4.0)],
                                                ),
                                                // child: Text("This is where your content goes")
                                              )
                                          )
                                      ),
                                      Positioned(
                                          top:0,
                                          left: 10,
                                          child: Card(
                                              elevation: 10.0,
                                              shadowColor: Colors.grey.withOpacity(0.5),
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(15.0),
                                              ),
                                              child:Container(
                                                  height: 200,
                                                  width: 150,
                                                  decoration:BoxDecoration(
                                                    borderRadius:BorderRadius.circular(10.0),
                                                    image:  DecorationImage(
                                                      fit:BoxFit.fill,
                                                      image:NetworkImage("http://mark.dbestech.com/uploads/images/test.png"),
                                                    ),
                                                  )

                                              )
                                          )
                                      ),
                                      Positioned(
                                          top:45,
                                          left: width*0.4,
                                          child: Container(
                                              height: 200,
                                              width: 150,
                                              child:Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  TextWidget(
                                                      text:"Nothing to show",
                                                      fontSize: 20,
                                                      color:Colors.grey
                                                  ),
                                                  TextWidget(
                                                      text:"Author: Mike Ahmed",
                                                      fontSize:16
                                                  ),
                                                  Divider(
                                                      color:Colors.black
                                                  ),
                                                  TextWidget(
                                                      text:"Nothing to Show",
                                                      fontSize: 16,
                                                      color:Colors.grey
                                                  ),
                                                ],
                                              )
                                          )
                                      ),
                                    ],
                                  )
                              )
                          )
                        ]
                      ),

                    ),
                  ),
                ],
              )
          ),
        )
    );
  }
}
