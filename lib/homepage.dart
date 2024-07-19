import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class TipHomePage extends StatefulWidget{
  @override
  State<TipHomePage> createState() => _TipHomePageState();
}

class _TipHomePageState extends State<TipHomePage> {
  int tip = 0;
  double tipcal = 0;
  num total = 0;
  int count = 1;
  num totalBperson = 0;
  bool flag = false;
  TextEditingController enterYourBill = TextEditingController();
  TextEditingController tip10 = TextEditingController();
  TextEditingController tip15 = TextEditingController();
  TextEditingController tip20 = TextEditingController();
  TextEditingController tipCustom = TextEditingController();

  @override
  Widget build(BuildContext context) {
    int option = 0;
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Padding(
        padding:  EdgeInsets.all(4.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/icons/cap_icon.png",),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Mr",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                          Text("TIP",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,fontFamily: "AppBarFont"),)
                        ],
                      ),
                      Text("Calculator",style: TextStyle(fontFamily: "AppBarFont",fontSize: 15,fontWeight: FontWeight.bold),),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
                flex: 5,
                child: Center(
                  child: Container(
                    height: 170,
                    width: 290,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(11),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Total p/person",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),)
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("\$",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),


                              /*-------------------Total Per Person-----------------------*/
                              Text("${totalBperson}",style: TextStyle(fontWeight: FontWeight.bold,fontFamily: "assets/fonts/Kanit-ExtraBold.ttf",fontSize: 35),),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.all(9.0),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border(bottom:BorderSide(color: Colors.grey.shade500,width: 2)),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("Total Bill",style: TextStyle(fontSize: 15),),


                                  /*----------------Total Bill----------------------------*/
                                  Text("\$${total}",style: TextStyle(fontFamily: "assets/fonts/Kanit-ExtraBold.ttf",color: Color.fromARGB(255, 0, 201, 188)),textAlign: TextAlign.left,)
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("Total Tip",style: TextStyle(fontSize: 15,),),

                                  /*--------------------Total Tip-----------------------*/
                                  Text("\$${tipcal}",style: TextStyle(fontFamily: "assets/fonts/Kanit-ExtraBold.ttf",color: Color.fromARGB(255, 0, 201, 188)),textAlign: TextAlign.left,)
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    // color: Colors.pink,
                  ),
                )),
            Expanded(
                flex: 2,
                child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 80,vertical: 5),
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Enter",style: TextStyle(fontWeight: FontWeight.bold),),
                            Text("Your Bill"),
                          ],
                        ),
                        SizedBox(width: 28,),


                        /*-------------------------TextField-----------------------------*/
                        Expanded(
                          child: TextField(
                            controller: enterYourBill,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(12)),
                                    borderSide: BorderSide(color: Colors.white,width: 4)
                                )
                            ),
                            onTap: (){
                              option = 1;
                              setState(() {

                              });
                            },
                          ),
                        ),
                      ],
                    )
                )
            ),
            Expanded(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Choose",style: TextStyle(fontWeight: FontWeight.bold),),
                        Text("Your Tip"),
                      ],
                    ),
                    SizedBox(width: 30,),
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 40,
                              width: 60,
                              child: InkWell(
                                  onTap: (){
                                    TextField(
                                      controller: tip10,
                                    );
                                    tip = 10;
                                    calculation();
                                    setState(() {

                                    });
                                  },
                                  child: Center(child: Text("10%",style: TextStyle(fontWeight: FontWeight.bold,fontFamily: "assets/fonts/Kanit-ExtraBoldItalic.ttf",color: Colors.white,fontSize: 20),))),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255,1,201,190),
                                border: Border(left: BorderSide(width: 2,color: Color.fromARGB(255,1,201,190),),bottom: BorderSide(width: 2,color: Color.fromARGB(255,1,201,190),),right: BorderSide(width: 2,color: Color.fromARGB(255,1,201,190),),top: BorderSide(width: 2,color: Color.fromARGB(255,1,201,190),),),
                                borderRadius: BorderRadius.circular(7),
                              ),
                            ),
                            SizedBox(width: 10,),
                            Container(
                              height: 40,
                              width: 60,
                              child: InkWell(
                                  onTap:(){
                                    TextField(
                                      controller: tip15,
                                    );
                                    tip = 15;
                                    calculation();
                                    setState(() {

                                    });
                                  } ,
                                  child: Center(child: Text("15%",style: TextStyle(fontWeight: FontWeight.bold,fontFamily: "assets/fonts/Kanit-ExtraBoldItalic.ttf",color: Colors.white,fontSize: 20),))),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255,1,201,190),
                                border: Border(left: BorderSide(width: 2,color: Color.fromARGB(255,1,201,190),),bottom: BorderSide(width: 2,color: Color.fromARGB(255,1,201,190),),right: BorderSide(width: 2,color: Color.fromARGB(255,1,201,190),),top: BorderSide(width: 2,color: Color.fromARGB(255,1,201,190),),),
                                borderRadius: BorderRadius.circular(7),
                              ),
                            ),
                            SizedBox(width: 10,),
                            Container(
                              height: 40,
                              width: 60,
                              child: InkWell(
                                  onTap:  (){
                                    TextField(
                                      controller: tip20,
                                    );
                                    tip = 20;
                                    calculation();
                                    setState(() {

                                    });
                                  } ,
                                  child: Center(child: Text("20%",style: TextStyle(fontWeight: FontWeight.bold,fontFamily: "assets/fonts/Kanit-ExtraBoldItalic.ttf",color: Colors.white,fontSize: 20),))),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255,1,201,190),
                                border: Border(left: BorderSide(width: 2,color: Color.fromARGB(255,1,201,190),),bottom: BorderSide(width: 2,color: Color.fromARGB(255,1,201,190),),right: BorderSide(width: 2,color: Color.fromARGB(255,1,201,190),),top: BorderSide(width: 2,color: Color.fromARGB(255,1,201,190),),),
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Container(
                          height: 40,
                          width: 200,
                          child: InkWell(
                            onTap:  (){
                              flag = true;
                              setState(() {

                              });
                            } ,
                            child:flag == false ? Center(child: Text("Custom Tip",style: TextStyle(fontWeight: FontWeight.bold,fontFamily: "assets/fonts/Kanit-ExtraBoldItalic.ttf",color: Colors.white,fontSize: 20),)):
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                SizedBox(
                                  width: 50,
                                  child: Padding(
                                    padding:  EdgeInsets.all(8.0),
                                    child: TextField(
                                      controller: tipCustom,
                                      style: TextStyle(fontWeight: FontWeight.bold,fontFamily: "assets/fonts/Kanit-ExtraBoldItalic.ttf",color: Colors.white,fontSize: 20),
                                    ),
                                  ),
                                ),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.transparent,
                                      foregroundColor: Colors.transparent,
                                      shadowColor: Colors.transparent,
                                    ),
                                    onPressed: (){
                                      tip = int.parse(tipCustom.text.toString());
                                      calculation();
                                      setState(() {

                                      });
                                    },
                                    child: Text("Tap",style: TextStyle(fontWeight: FontWeight.bold,fontFamily: "assets/fonts/Kanit-ExtraBoldItalic.ttf",color: Colors.white,fontSize: 20),)
                                )
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255,1,201,190),
                            border: Border(left: BorderSide(width: 2,color: Color.fromARGB(255,1,201,190),),bottom: BorderSide(width: 2,color: Color.fromARGB(255,1,201,190),),right: BorderSide(width: 2,color: Color.fromARGB(255,1,201,190),),top: BorderSide(width: 2,color: Color.fromARGB(255,1,201,190),),),
                            borderRadius: BorderRadius.circular(7),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
            ),
            Expanded(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Split",style: TextStyle(fontWeight: FontWeight.bold),),
                        Text("the toatl"),
                      ],
                    ),
                    SizedBox(width: 30,),
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 40,
                              width: 60,
                              child: ElevatedButton(onPressed: (){
                                if(count > 1) {
                                  count--;
                                  totalBperson = total ~/ count;
                                }
                                setState(() {

                                });
                              },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Color.fromARGB(255,1,201,190),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.horizontal(right: Radius.circular(7),left: Radius.circular(7)),)
                                ),
                                child: Text("-",style: TextStyle(fontWeight: FontWeight.bold,fontFamily: "assets/fonts/Kanit-ExtraBoldItalic.ttf",color: Colors.white,fontSize: 25),),
                              ),
                            ),
                            Container(
                              height: 40,
                              width: 80,
                              child: Center(child: Text("$count",style: TextStyle(fontWeight: FontWeight.bold,fontFamily: "assets/fonts/Kanit-ExtraBoldItalic.ttf",color: Colors.black,fontSize: 20),)),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border(left: BorderSide(width: 2,color: Colors.white,),bottom: BorderSide(width: 2,color: Colors.white,),right: BorderSide(width: 2,color: Colors.white,),top: BorderSide(width: 2,color: Colors.white,),),
                              ),
                            ),
                            Container(
                              height: 40,
                              width: 60,
                              child: ElevatedButton(onPressed: (){
                                count++;
                                totalBperson = total~/count;
                                setState(() {

                                });
                              },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Color.fromARGB(255,1,201,190),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.horizontal(right: Radius.circular(7),left: Radius.circular(7)),)
                                ),
                                child: Text("+",style: TextStyle(fontWeight: FontWeight.bold,fontFamily: "assets/fonts/Kanit-ExtraBoldItalic.ttf",color: Colors.white,fontSize: 25),),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                )
            ),
          ],
        ),
      ),
    );
  }
  void calculation(){
    if(enterYourBill.text.isNotEmpty){
      int bill = int.parse(enterYourBill.text.toString());
      tipcal = (bill *tip)/100;
      tipcal == 0 ? total = bill : total = bill+tipcal;
      totalBperson = total;
    }
  }
}
