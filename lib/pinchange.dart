

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:badges/badges.dart';



class pinchange extends StatefulWidget {

  @override
  pinchangestate createState() => pinchangestate();
}



class pinchangestate extends State<pinchange> {


  @override
  Widget build(BuildContext context) {
 int n=0;
    return Scaffold(

      body: Stack(
        alignment: AlignmentDirectional.topStart,
        fit:StackFit.expand,
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
                          Text('Change MPIN', style: TextStyle(fontFamily: 'Robot', fontWeight: FontWeight.w700,color: Colors.white,fontSize: 20),),
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
            child:
            Container(
              padding: EdgeInsets.only(top: 20.0),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(20.0),topLeft: Radius.circular(20.0),),
              ),
              child:SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 5.0,
                    ),
                    Container(
                        height: 20.0,
                       padding: EdgeInsets.only(right: 10.0,left: 20.0),
                       //color: Colors.blue,
                       width: MediaQuery.of(context).size.width,
                        child:Text("Enter Old MPIN", style: TextStyle(
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Colors.grey.withOpacity(0.5),

                        ),),
                      ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width:45.0,
                          height: 45.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue.shade50.withOpacity(0.6),
                            border: Border.all(
                              color: Colors.grey.shade500.withOpacity(0.5),
                            ),
                          ),
                         // padding: EdgeInsets.all(10.0),
                          child: Align(
                            alignment: Alignment.center,
                            child: TextField(
                              readOnly: true,
                              showCursor: true,
                              keyboardType: TextInputType.number,
                             maxLength: 1,
                              decoration: InputDecoration(
                                counterText: "",
                              border: InputBorder.none
                              ),
                              textAlign: TextAlign.center,
                              textInputAction: TextInputAction.next,
                              ),
                            ),
                          ),
                        Container(
                          width:45.0,
                          height: 45.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue.shade50.withOpacity(0.6),
                            border: Border.all(
                              color: Colors.grey.shade500.withOpacity(0.5),
                            ),
                          ),
                          // padding: EdgeInsets.all(10.0),
                          child: Align(
                            alignment: Alignment.center,
                            child: TextField(
                              readOnly: true,
                              showCursor: true,
                              keyboardType: TextInputType.number,
                              maxLength: 1,
                              decoration: InputDecoration(
                                  counterText: "",
                                  border: InputBorder.none
                              ),
                              textAlign: TextAlign.center,
                              textInputAction: TextInputAction.next,
                            ),
                          ),
                        ),
                        Container(
                          width:45.0,
                          height: 45.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue.shade50.withOpacity(0.6),
                            border: Border.all(
                              color: Colors.grey.shade500.withOpacity(0.5),
                            ),
                          ),
                          // padding: EdgeInsets.all(10.0),
                          child: Align(
                            alignment: Alignment.center,
                            child: TextField(
                              keyboardType: TextInputType.number,
                              maxLength: 1,
                              decoration: InputDecoration(
                                  counterText: "",
                                  border: InputBorder.none
                              ),
                              textAlign: TextAlign.center,
                              textInputAction: TextInputAction.next,
                            ),
                          ),
                        ),
                        Container(
                          width:45.0,
                          height: 45.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue.shade50.withOpacity(0.6),
                            border: Border.all(
                              color: Colors.grey.shade500.withOpacity(0.5),
                            ),
                          ),
                          // padding: EdgeInsets.all(10.0),
                          child: Align(
                            alignment: Alignment.center,
                            child: TextField(
                              keyboardType: TextInputType.number,
                              maxLength: 1,
                              decoration: InputDecoration(
                                  counterText: "",
                                  border: InputBorder.none
                              ),
                              textAlign: TextAlign.center,
                              textInputAction: TextInputAction.next,
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      height: 20.0,
                      //color: Colors.blue,
                      padding: EdgeInsets.only(right: 10.0,left: 20.0),
                      width: MediaQuery.of(context).size.width,
                      child:Text("Enter New MPIN", style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Colors.grey.withOpacity(0.5),

                      ),),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width:45.0,
                            height: 45.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue.shade50.withOpacity(0.6),
                              border: Border.all(
                                color: Colors.grey.shade500.withOpacity(0.5),
                              ),
                            ),
                            // padding: EdgeInsets.all(10.0),
                            child: Align(
                              alignment: Alignment.center,
                              child: TextField(
                                keyboardType: TextInputType.number,
                                maxLength: 1,
                                decoration: InputDecoration(
                                    counterText: "",
                                    border: InputBorder.none
                                ),
                                textAlign: TextAlign.center,
                                textInputAction: TextInputAction.next,
                              ),
                            ),
                          ),
                          Container(
                            width:45.0,
                            height: 45.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue.shade50.withOpacity(0.6),
                              border: Border.all(
                                color: Colors.grey.shade500.withOpacity(0.5),
                              ),
                            ),
                            // padding: EdgeInsets.all(10.0),
                            child: Align(
                              alignment: Alignment.center,
                              child: TextField(
                                keyboardType: TextInputType.number,
                                maxLength: 1,
                                decoration: InputDecoration(
                                    counterText: "",
                                    border: InputBorder.none
                                ),
                                textAlign: TextAlign.center,
                                textInputAction: TextInputAction.next,
                              ),
                            ),
                          ),
                          Container(
                            width:45.0,
                            height: 45.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue.shade50.withOpacity(0.6),
                              border: Border.all(
                                color: Colors.grey.shade500.withOpacity(0.5),
                              ),
                            ),
                            // padding: EdgeInsets.all(10.0),
                            child: Align(
                              alignment: Alignment.center,
                              child: TextField(
                                keyboardType: TextInputType.number,
                                maxLength: 1,
                                decoration: InputDecoration(
                                    counterText: "",
                                    border: InputBorder.none
                                ),
                                textAlign: TextAlign.center,
                                textInputAction: TextInputAction.next,
                              ),
                            ),
                          ),
                          Container(
                            width:45.0,
                            height: 45.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue.shade50.withOpacity(0.6),
                              border: Border.all(
                                color: Colors.grey.shade500.withOpacity(0.5),
                              ),
                            ),
                            // padding: EdgeInsets.all(10.0),
                            child: Align(
                              alignment: Alignment.center,
                              child: TextField(
                                keyboardType: TextInputType.number,
                                maxLength: 1,
                                decoration: InputDecoration(
                                    counterText: "",
                                    border: InputBorder.none
                                ),
                                textAlign: TextAlign.center,
                                textInputAction: TextInputAction.next,
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                   SizedBox(
                    height: 20.0,
                    ),
                    Container(
                      height: 20.0,
                      padding: EdgeInsets.only(right: 10.0,left: 20.0),
                      //color: Colors.blue,
                      width: MediaQuery.of(context).size.width,
                      child:Text("Confirm MPIN", style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Colors.grey.withOpacity(0.5),

                      ),),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width:45.0,
                            height: 45.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue.shade50.withOpacity(0.6),
                              border: Border.all(
                                color: Colors.grey.shade500.withOpacity(0.5),
                              ),
                            ),
                            // padding: EdgeInsets.all(10.0),
                            child: Align(
                              alignment: Alignment.center,
                              child: TextField(
                                keyboardType: TextInputType.number,
                                maxLength: 1,
                                decoration: InputDecoration(
                                    counterText: "",
                                    border: InputBorder.none
                                ),
                                textAlign: TextAlign.center,
                                textInputAction: TextInputAction.next,
                              ),
                            ),
                          ),
                          Container(
                            width:45.0,
                            height: 45.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue.shade50.withOpacity(0.6),
                              border: Border.all(
                                color: Colors.grey.shade500.withOpacity(0.5),
                              ),
                            ),
                            // padding: EdgeInsets.all(10.0),
                            child: Align(
                              alignment: Alignment.center,
                              child: TextField(
                                keyboardType: TextInputType.number,
                                maxLength: 1,
                                decoration: InputDecoration(
                                    counterText: "",
                                    border: InputBorder.none
                                ),
                                textAlign: TextAlign.center,
                                textInputAction: TextInputAction.next,
                              ),
                            ),
                          ),
                          Container(
                            width:45.0,
                            height: 45.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue.shade50.withOpacity(0.6),
                              border: Border.all(
                                color: Colors.grey.shade500.withOpacity(0.5),
                              ),
                            ),
                            // padding: EdgeInsets.all(10.0),
                            child: Align(
                              alignment: Alignment.center,
                              child: TextField(
                                keyboardType: TextInputType.number,
                                maxLength: 1,
                                decoration: InputDecoration(
                                    counterText: "",
                                    border: InputBorder.none
                                ),
                                textAlign: TextAlign.center,
                                textInputAction: TextInputAction.next,
                              ),
                            ),
                          ),
                          Container(
                            width:45.0,
                            height: 45.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue.shade50.withOpacity(0.6),
                              border: Border.all(
                                color: Colors.grey.shade500.withOpacity(0.5),
                              ),
                            ),
                            // padding: EdgeInsets.all(10.0),
                            child: Align(
                              alignment: Alignment.center,
                              child: TextField(
                                keyboardType: TextInputType.number,
                                maxLength: 1,
                                decoration: InputDecoration(
                                    counterText: "",
                                    border: InputBorder.none
                                ),
                                textAlign: TextAlign.center,
                                textInputAction: TextInputAction.next,
                              ),
                            ),
                          ),


                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:150.0,bottom: 15.0),
                      child: Container(
                        width: 150,
                        height: 50,
                        child: MaterialButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          onPressed: (){},
                          child: Text("Set New MPIN", style: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Colors.white,

                          ),),
                          color: Color(0Xff0063f5),
                        ),
                      ),
                    ),
                    Container(
                      height: 210.0,
                      color: Color(0Xffc4c4c4),
                     // padding: EdgeInsets.only(top: 20.0,),
                      width: MediaQuery.of(context).size.width,
                      child: GridView.count(crossAxisCount: 3,
                      padding: EdgeInsets.all(5.0),
                      physics: NeverScrollableScrollPhysics(),
                      mainAxisSpacing: 8.0,
                      crossAxisSpacing: 8.0,
                      shrinkWrap: true,
                      childAspectRatio: 3.0,
                      children: [
                        FlatButton(height: 20.0,onPressed: (){}, child: Text("1"),color: Colors.white,),
                        FlatButton(onPressed: (){}, child: Text("2"),color: Colors.white,),
                        FlatButton(onPressed: (){}, child: Text("3"),color: Colors.white,),
                        FlatButton(onPressed: (){}, child: Text("4"),color: Colors.white,),
                        FlatButton(onPressed: (){}, child: Text("5"),color: Colors.white,),
                        FlatButton(onPressed: (){}, child: Text("6"),color: Colors.white,),
                        FlatButton(onPressed: (){}, child: Text("7"),color: Colors.white,),
                        FlatButton(onPressed: (){}, child: Text("8"),color: Colors.white,),
                        FlatButton(onPressed: (){}, child: Text("9"),color: Colors.white,),
                        FlatButton(onPressed: (){}, child: Text("ABC"),),
                        FlatButton(onPressed: (){}, child: Text("0"),color: Colors.white,),
                        FlatButton(onPressed: (){}, child: Text("back"),),

                      ],)
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


