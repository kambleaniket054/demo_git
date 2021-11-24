import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.deepPurple,
      ),
      home: MyHomePage(title: 'Cooking'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      toolbarHeight: 0.0,
        elevation: 0.0,
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
       //r mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(20.0),bottomLeft: Radius.circular(20.0),),
            ),

            width: MediaQuery.of(context).size.width,
            height: 150.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 20, right: 20.0),
                  child: Row(
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(CupertinoIcons.back,size: 24.0,color: Colors.white,),
                      Text(widget.title,style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 20.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),),
              IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.bell,color: Colors.white,size:24.0),),
                    ],
                  )
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0,),
                  child: Card(
                    color: Colors.white.withOpacity(0.5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),

                    ),
                    child: TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: 'search',
                        hintStyle: TextStyle(
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                          color: Colors.white,

                        ),
                        prefixIcon: Icon(CupertinoIcons.search,size: 24.0,color: Colors.white,),
border: InputBorder.none,
                      ),
                    ),

                  ),
                ),


              ],
            ),
          ),
         Expanded(
           child: SingleChildScrollView(
             scrollDirection: Axis.vertical,
             child: Column(
               children: [
                 Container(
                 padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
                 child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text("Labels",style: TextStyle(
                       fontFamily: 'Roboto',
                       fontSize: 20.0,
                       fontWeight: FontWeight.w700,
                       fontStyle: FontStyle.normal,
                       color: Colors.black,
                     ),),
                   Container(
                     width: MediaQuery.of(context).size.width,
                     height: 90.0,
                     child: ListView(
                       //padding: EdgeInsets.symmetric(vertical: 8.0,horizontal: 20.0),
                       scrollDirection: Axis.horizontal,
                       children: [
                         Padding(
                           padding: const EdgeInsets.only(right:10.0),
                           child: Chip(label: Text('All'),backgroundColor: Colors.deepPurple.shade100,),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(right:10.0),
                           child: Chip(label: Text('Cake'),backgroundColor: Colors.deepPurple.shade100,),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(right:10.0),
                           child: Chip(label: Text('FastFood'),backgroundColor: Colors.deepPurple.shade100,),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(right:10.0),
                           child: Chip(label: Text('Kabbab'),backgroundColor: Colors.deepPurple.shade100,),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(right:10.0),
                           child: Chip(label: Text('Chicken'),backgroundColor: Colors.deepPurple.shade100,),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(right:10.0),
                           child: Chip(label: Text('Momos'),backgroundColor: Colors.deepPurple.shade100,),
                         ),
                       ],
                     ),
                   ),
                   Container(
                  // color: Colors.deepPurple,
                   width: MediaQuery.of(context).size.width,
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Row(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text("BookMarks",style: TextStyle(
                             fontSize: 20,
                             fontWeight: FontWeight.w600,
                             fontFamily: 'Roboto',
                           ),),

                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                             children: [
                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Icon(CupertinoIcons.bin_xmark,size: 24,),
                               ),
                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Icon(Icons.logout,size: 24,),
                               ),
                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Icon(CupertinoIcons.arrow_up_arrow_down,size: 24,),
                               ),
                             ],
                           )

                         ],
                       ),

                       Chip(label: Text('125'),avatar: Icon(CupertinoIcons.bus,color: Colors.grey,),backgroundColor: Colors.transparent,),

                     ],
                   ),
                 ),
                 Container(

                 ),

                   ],
                 ),
                   ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 370,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    Card(
                      margin:EdgeInsets.all(15.0),
                      elevation: 2.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 80.0,
                                padding: EdgeInsets.all(5.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQeyPu2FUJx171dtqBq7XKPCRWjtuGZZ9-_9g&usqp=CAU",fit: BoxFit.contain,),
                              )
                         , Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                 Text("Black Forest Cake"),
                                 SizedBox(height: 10.0,),
                                 Row(
                                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                                   children: [
                                     Icon(CupertinoIcons.bell_solid, size: 30.0,),
                                     SizedBox(width: 10.0,),
                                     Icon(CupertinoIcons.star_fill, size: 30.0,),
                                   ],
                                 ),
                               ],
                              ),
                            ],
                          ),
                      IconButton(onPressed: (){}, icon: Icon(Icons.logout),),
                        ],
                      ) ,
                    ),
                    Card(
                      margin:EdgeInsets.all(10.0),
                      elevation: 2.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 80.0,
                                height: 80.0,
                                child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQeyPu2FUJx171dtqBq7XKPCRWjtuGZZ9-_9g&usqp=CAU",fit: BoxFit.contain,),
                              )
                              , Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Vallina Cake"),
                                  SizedBox(height: 10.0,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(CupertinoIcons.bell_solid, size: 30.0,),
                                      SizedBox(width: 10.0,),
                                      Icon(CupertinoIcons.star_fill, size: 30.0,),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          IconButton(onPressed: (){}, icon: Icon(Icons.logout),),
                        ],
                      ) ,
                    ),
                    Card(
                      margin:EdgeInsets.all(10.0),
                      elevation: 2.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 80.0,
                                height: 80.0,
                                child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQeyPu2FUJx171dtqBq7XKPCRWjtuGZZ9-_9g&usqp=CAU",fit: BoxFit.contain,),
                              )
                              , Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Vallina Cake"),
                                  SizedBox(height: 10.0,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(CupertinoIcons.bell_solid, size: 30.0,),
                                      SizedBox(width: 10.0,),
                                      Icon(CupertinoIcons.star_fill, size: 30.0,),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          IconButton(onPressed: (){}, icon: Icon(Icons.logout),),
                        ],
                      ) ,
                    ),
                    Card(
                      margin:EdgeInsets.all(10.0),
                      elevation: 2.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 80.0,
                                height: 80.0,
                                child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQeyPu2FUJx171dtqBq7XKPCRWjtuGZZ9-_9g&usqp=CAU",fit: BoxFit.contain,),
                              )
                              , Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Vallina Cake"),
                                  SizedBox(height: 10.0,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(CupertinoIcons.bell_solid, size: 30.0,),
                                      SizedBox(width: 10.0,),
                                      Icon(CupertinoIcons.star_fill, size: 30.0,),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          IconButton(onPressed: (){}, icon: Icon(Icons.logout),),
                        ],
                      ) ,
                    ),
                    Card(
                      margin:EdgeInsets.all(10.0),
                      elevation: 2.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 80.0,
                                height: 80.0,
                                child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQeyPu2FUJx171dtqBq7XKPCRWjtuGZZ9-_9g&usqp=CAU",fit: BoxFit.contain,),
                              )
                              , Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Vallina Cake"),
                                  SizedBox(height: 10.0,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(CupertinoIcons.bell_solid, size: 30.0,),
                                      SizedBox(width: 10.0,),
                                      Icon(CupertinoIcons.star_fill, size: 30.0,),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          IconButton(onPressed: (){}, icon: Icon(Icons.logout),),
                        ],
                      ) ,
                    ),


                  ],
                ),
              ),
               ],
             ),


           ),
         ),
        ],
    ),
    );
  }
}
