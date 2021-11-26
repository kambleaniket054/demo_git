import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:badges/badges.dart';



class productdata extends StatefulWidget {
  // This widget is the root of your application.
  @override
  productdatastate createState() => productdatastate();
}



class productdatastate extends State<productdata> {
bool _value = false;
bool _value1 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        alignment: AlignmentDirectional.topStart,
        fit:StackFit.expand,
//overflow: Overflow.visible,
        clipBehavior: Clip.none,
        children:<Widget> [
          Container(
            height: 150.0,
            color: Color(0Xff023e7a),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(onPressed:(){}, icon: Icon(Icons.arrow_back, color: Colors.white,size: 24,),),
                          Text('Settings', style: TextStyle(fontFamily: 'Robot', fontWeight: FontWeight.w700,color: Colors.white,fontSize: 20),),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            IconButton(onPressed: (){}, icon: Icon(Icons.search, color: Colors.white,size: 24,),),
                            Badge(
                              padding: EdgeInsets.all(6.0),
                              position: BadgePosition.topEnd(top: 1.5,end: 2),
                              badgeColor: Colors.white,
                              animationType: BadgeAnimationType.scale,
                              elevation: 0.0,
                              borderSide: BorderSide(
                                color: Color(0Xff023e7a),
                                width: 1.9,
                              ),
                              child: CircleAvatar(backgroundImage: NetworkImage("https://bjedrocha.com/images/posts/gmail-style-avatars/avatar.png",),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
       Positioned(
         top: 120.0,
         bottom: 0.0,
         child: Container(
          padding: EdgeInsets.only(left:10.0,right: 10.0,top: 20.0),
           width: MediaQuery.of(context).size.width,
           decoration: BoxDecoration(
             color: Colors.white,
             borderRadius: BorderRadius.only(topRight: Radius.circular(20.0),topLeft: Radius.circular(20.0),),
           ),
           child:Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
             Container(
               padding: EdgeInsets.only(left: 13.0),
               child: Text("Simplified Login",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,fontFamily: 'Roboto'),),
             ),
           SizedBox(
             height: 20.0,
           ),
            Container(
             width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(left: 5.0,right: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 90.0,
                    width: 150.0,
                    padding: EdgeInsets.only(top:20.0,left: 10.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0Xff41414e).withOpacity(0.5),width: 0.5),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.password,color: Colors.blue.shade300,size: 24.0,),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text("Set / Change MPIN",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700,fontFamily: 'Roboto'),),

                      ],
                    ),
                  ),
                   SizedBox(width: 10.0,),
                     Container(
                       height: 90.0,
                       width: 150.0,
                       padding: EdgeInsets.all(8.0),
                       decoration: BoxDecoration(
                         border: Border.all(color: Color(0Xff41414e).withOpacity(0.5),width: 0.5),
                         borderRadius: BorderRadius.circular(10.0),
                       ),
                       child:Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Icon(Icons.fingerprint,color: Colors.blue.shade300,size: 24.0,),
                               Switch(activeColor: Colors.blue,
                                 value: _value1, onChanged: (value){
                                   setState(() {
                                     _value1=value;
                                   });
                                 },),
                             ],
                           ),

                           Text("FingerPrint",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700,fontFamily: 'Roboto'),),

                         ],
                       ),
                     ),
                ],
              ),
            ),

               Container(padding: EdgeInsets.only(top: 20.0,bottom: 10.0,left: 13.0),
                   child: Text("User Preference",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,fontFamily: 'Roboto'),)),

               Container(
                 padding: EdgeInsets.only(right: 10.0),
               child: Column(
                 children: [
                   InkWell(
                   onTap: (){

                   },
                   splashColor: Colors.grey,
                   enableFeedback: true,
                   child: Container(
                     margin: EdgeInsets.all(10.0),
                     padding: EdgeInsets.only(top: 10.0),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Text("Change password",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,fontFamily: 'Roboto',color: Color(0Xff41414e),),),
                         Icon(CupertinoIcons.forward,size: 20.0,color: Color(0Xff41414e),),
                       ],
                     ),
                   ),
             ),
                   InkWell(
                     onTap: (){

                     },
                     splashColor: Colors.grey,
                     enableFeedback: true,
                     child: Container(
                       margin: EdgeInsets.only(left: 10.0,right: 10.0),
                       //padding: EdgeInsets.only(top: 10.0),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text("Investment Guide",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,fontFamily: 'Roboto',color: Color(0Xff41414e),),),
                          Switch(
                          activeColor: Colors.blue,
                          value: _value, onChanged: (value){
                            setState(() {
                           _value=value;
                            });
                          },),
                         ],
                       ),
                     ),
                   ),
                   InkWell(
                     onTap: (){

                     },
                     splashColor: Colors.grey,
                     enableFeedback: true,
                     child: Container(
                       margin: EdgeInsets.all(10.0),
                       padding: EdgeInsets.only(top: 10.0),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text("Refer a Friends",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,fontFamily: 'Roboto',color: Color(0Xff41414e),),),
                           Icon(CupertinoIcons.forward,size: 20.0,color: Color(0Xff41414e),),
                         ],
                       ),
                     ),
                   ),
                   InkWell(
                     onTap: (){

                     },
                     splashColor: Colors.grey,
                     enableFeedback: true,
                     child: Container(
                       margin: EdgeInsets.all(10.0),
                       padding: EdgeInsets.only(top: 10.0),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text("Link",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,fontFamily: 'Roboto',color: Color(0Xff41414e),),),
                           Icon(CupertinoIcons.forward,size: 20.0,color: Color(0Xff41414e),),
                         ],
                       ),
                     ),
                   ),
                   InkWell(
                     onTap: (){

                     },
                     splashColor: Colors.grey,
                     enableFeedback: true,
                     child: Container(
                       margin: EdgeInsets.all(10.0),
                       padding: EdgeInsets.only(top: 10.0),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text("Raise a Ticket",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,fontFamily: 'Roboto',color: Color(0Xff41414e),),),
                           Icon(CupertinoIcons.forward,size: 20.0,color: Color(0Xff41414e),),
                         ],
                       ),
                     ),
                   ),
                   InkWell(
                     onTap: (){

                     },
                     splashColor: Colors.grey,
                     enableFeedback: true,
                     child: Container(
                       margin: EdgeInsets.all(10.0),
                       padding: EdgeInsets.only(top: 10.0),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text("Contact Use",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,fontFamily: 'Roboto',color: Color(0Xff41414e),),),
                           Icon(CupertinoIcons.forward,size: 20.0,color: Color(0Xff41414e),),
                         ],
                       ),
                     ),
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
