

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'HomeScreen.dart';
import 'SecondHomeScreen.dart';


class ThirdHomeScreen extends StatefulWidget {
  static const String routeName = "Third Home";
  const ThirdHomeScreen({super.key});

  @override
  State<ThirdHomeScreen> createState() => _ThirdHomeScreenState();
}

class _ThirdHomeScreenState extends State<ThirdHomeScreen> {
  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body:Container(
        child: Column(
          children: [
            SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/Flower.png"),
                SizedBox(width: 7,),
                Text("AliceCare",style:TextStyle(
                  fontSize: 27
                ) ,),]),
            SizedBox(height: 20,),

         Padding(
           padding: const EdgeInsets.only(right:20,left: 20),
           child: TextField(
                controller: _searchController,
                decoration: InputDecoration(


                  hintText: 'Articles, Video, Photo, Audio and More,.',
                  prefixIcon: IconButton(

                    icon: Icon(Icons.search,
                        color: Colors.grey),
                    onPressed: () {
                    },
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
         ),
            SizedBox(height: 15),
            Row(
              children: [
                SizedBox(width: 8),
                Chip(
                  backgroundColor: Color(0xffD6BBFB),
                  side:BorderSide(
                      color: Colors.grey),
                  label: const Text('Discover',
                    style: TextStyle(
                        fontSize: 15,
                        color: Color(0xff6941C6
                  )),),
                ),
                SizedBox(width: 8),
                Chip(
                  backgroundColor: Colors.transparent,
                  side:BorderSide(
                      color: Colors.grey),

                  label: const Text('News',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.blueGrey,

                    ),
                  ),
                ),
                SizedBox(width: 10),
                Chip(
                  backgroundColor: Colors.transparent,
                  side:BorderSide(
                      color: Colors.grey),

                  label: const Text('Most Viewed',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.blueGrey
                        ),),
                ),
                SizedBox(width: 10),
                Chip(
                  backgroundColor:Colors.transparent,
                  side:BorderSide(
                      color: Colors.grey),

                  label: const Text('Saved',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.blueGrey,
                        ),),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [

                SizedBox(width: 15),
                Text("Hot topics",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold),),
                SizedBox(width: 2,),
                         SizedBox(width: 190,),

                         Text("See all",
                          style: TextStyle(
                            fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color:Color(0xff5925DC
                    ),
                          ),
                         ),

                         SizedBox(width: 4),
                         Icon(
                           Icons.arrow_forward_ios,
                           size: 18,
                           color:Color(0xff5925DC
                           ),
                         ),
                       ],
                     ),
            SizedBox(height:20),
                       Row(
                        children: [
                          SizedBox(width: 15),
                          Image.asset("assets/images/18.png"),
                        ],
                      ),
            SizedBox(height: 20),

              Row(

                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 15,),
                  Text("Get Tips",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                  ),
                  ),
                  SizedBox(height: 30),
                ],
              ),
            SizedBox(height: 15),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey.shade200),
              width:390 ,
              height: 225,

              child: Container(

                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      SizedBox(width: 20),
                      Image.asset("assets/images/Doctor-PNG-Images 1.png"),
                      Padding(
                        padding: const EdgeInsets.only(top:30,left: 20),
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Connect with doctors &",
                                style: TextStyle(
                                    fontSize: 21,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black
                                ),),
                          Text("get suggestions",
                            style: TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                          ),
                              SizedBox(height: 10),

                              Text("Connect now and get  ",

                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black
                                ),),

                              Text("expert insights",

                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black
                                ),),
                              SizedBox(height: 20,),

                               Column(
                                children: [
                                  Container(
                                    width: 110,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Colors.purple.shade600,
                                    ),
                                    child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      TextButton(onPressed: (){},
                                          child: Text("View detail",
                                          style:TextStyle(
                                              color: Colors.white,
                                          fontSize: 18

                                          ) ,

                                          )),

                                    ],
                                  ),
                                  ),

                                ],
                               ),
                            ],
                          ),
                        ),
                      ),


                    ],),
              ),

            ),
            SizedBox(height:13 ),
            Row(
              children: [
                SizedBox(width: 15),
                Text("Cycle Phases and Period",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold),),
                SizedBox(width: 2,),
                SizedBox(width: 60,),

                Text("See all",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color:Color(0xff5925DC
                    ),
                  ),
                ),

                SizedBox(width: 4),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                  color:Color(0xff5925DC
                  ),
                ),
              ],
            ),

    ])));
  }
}
