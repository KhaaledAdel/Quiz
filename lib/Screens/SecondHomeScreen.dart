import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:carousel_slider/carousel_slider.dart';

import 'HomeScreen.dart';
import 'ThirdHomeScreen.dart';
import 'Widgets/workout_container/workout_container.dart';

class SecondHomeScreen extends StatefulWidget {
  static const String routeName = "Second Home";
  const SecondHomeScreen({super.key});

  @override
  State<SecondHomeScreen> createState() => _SecondHomeScreenState();
}

class _SecondHomeScreenState extends State<SecondHomeScreen> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return  DefaultTabController(
      length: 4,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
      Padding(
      padding: const EdgeInsets.only(left: 25, top: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
              children:[
                CircleAvatar(
      backgroundImage:AssetImage(
          "assets/images/Ellipse 10.png"),
       radius: 25,
    ),
     SizedBox(width: 15),
    Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text(
    "Hello, Jade",
    style: theme.textTheme.bodyMedium!.copyWith(
    color: Colors.black,
    ),
    ),
    const SizedBox(height: 8),
    Text(
    "Ready to workout?",
    style: theme.textTheme.bodyLarge,
    ),]),
   SizedBox(width: 85,),
            badges.Badge(
              position: badges.BadgePosition.custom(start: 18,bottom: 18),
              child: Icon(Icons.notifications_none_outlined,size: 35),
            ),]),]),),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 15),
            child: Container(
              padding: const EdgeInsets.only(left: 12,top: 15),
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xffF8F9FC),
              ),
              child: Row(
                children: [
                  const WorkoutContainer(
                    containerIcon: "assets/images/heart.png",
                    containerTitle: "Heart Rate",
                    containerDesc: "81 BPM",
                  ),
                  Container(
                    width: 1,
                    height: 60,
                    color: const Color(0xffD9D9D9),
                  ),
                  const SizedBox(width: 5),
                  const WorkoutContainer(
                    containerIcon: "assets/images/list.png",
                    containerTitle: "To-do",
                    containerDesc: "32,5%",
                  ),
                  Container(
                    width: 1,
                    height: 60,
                    color: const Color(0xffD9D9D9),
                  ),
                  const SizedBox(width: 5),
                  const WorkoutContainer(
                    containerIcon: "assets/images/Fire.png",
                    containerTitle: "Calo",
                    containerDesc: "1000 Cal",
                  ),
                ],
              ),

            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              "Workout Programs",
              style: theme.textTheme.bodyLarge,
            ),
          ),
          TabBar(
            labelColor: const Color(0xFF363F72),
            unselectedLabelColor: const Color(0xff667085),
            tabs: [
              Tab(
                child: Text(
                  "All Type",
                  style: theme.textTheme.bodyMedium,
                ) ,
              ),
              Tab(
                child: Text(
                  "Full Body",
                  style: theme.textTheme.bodyMedium,
                ) ,
              ),
              Tab(
                child: Text(
                  "Upper",
                  style: theme.textTheme.bodyMedium,
                ) ,
              ),
              Tab(
                child: Text(
                  "Lower",
                  style: theme.textTheme.bodyMedium,
                ) ,
              ),
            ],
          ),SizedBox(height: 20),
          Container(
          decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
    color: Colors.blueGrey.shade100),
    width:250 ,
    height: 220,

    child: Container(

    child: Row(
    children:[
    SizedBox(width: 20),
    Padding(
    padding:  EdgeInsets.only(top:30,left: 3),
    child: Container(
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Container(
      width:90,
      height:40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text("7 days",
        style: TextStyle(
        fontSize: 21,
        fontWeight: FontWeight.bold,
        color: Colors.black
        ),),
      ),
    ),SizedBox(height: 20,),
      Text("Morning Yoga",
        style: TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.bold,
            color: Colors.black
        ),),SizedBox(height: 10,),
      Text("Improve mental focus. Yoga",
        style: TextStyle(
            fontSize: 15,
            color: Colors.black
        ),),SizedBox(height: 20,),
      Row(
        children: [
          Icon(Icons.alarm),
          SizedBox(width: 5,),
          Text("30 mins",style: TextStyle(fontWeight: FontWeight.bold),)
        ],
      ),]),),),
      Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Image.asset("assets/images/[removal 2.png"),),

            ]),
          ),

    ),  SizedBox(height: 20,),


            Container(
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(25),
    color: Colors.blueGrey.shade100),
    width:220 ,
    height: 220,

    child: Container(

    child: Row(
    children:[
    SizedBox(width: 10),
    Padding(
    padding:  EdgeInsets.only(top:30,left: 8),
    child: Container(
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Container(
    width:90,
    height:40,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    color: Colors.white,),
    child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text("3 days",
    style: TextStyle(
    fontSize: 21,
    fontWeight: FontWeight.bold,
    color: Colors.black
    ),),
    ),
    ),SizedBox(height: 20,),
    Text("Plank Exercise",
    style: TextStyle(
    fontSize: 21,
    fontWeight: FontWeight.bold,
    color: Colors.black
    ),),SizedBox(height: 10,),
    Text("Improve posture and stability.",
    style: TextStyle(
    fontSize: 15,
    color: Colors.black
    ),),SizedBox(height: 20,),
    Row(
    children: [
    Icon(Icons.alarm),
    SizedBox(width: 5,),
    Text("30 mins",style: TextStyle(fontWeight: FontWeight.bold),)
    ],
    ),]),),),
    Padding(
    padding: const EdgeInsets.only(left: 1),
    child: Image.asset("assets/images/pngwing 1.png"),),

    ]),
    ),

            )],
      ),
    );
  }

}