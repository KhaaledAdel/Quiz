import 'package:exam/Screens/SecondHomeScreen.dart';
import 'package:exam/Screens/ThirdHomeScreen.dart';
import 'package:exam/Screens/Widgets/ExerciseWidgets/ExerciseWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:carousel_slider/carousel_slider.dart';

import 'Widgets/FeatureWidget/FeatureWidgetsItem.dart';
class HomeScreen extends StatefulWidget {
  static const String routeName = "Home";
   HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    List<Widget> itemFeatures = [
      const FeatureWidget(),
      const FeatureWidget(),
      const FeatureWidget(),
    ];
    return SingleChildScrollView(
      child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 65)),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 20),
                Image.asset("assets/images/icon.png"),
                SizedBox(width: 15),
                Text(
                  "Moody",
                  style: theme.textTheme.titleLarge!.copyWith(
                      fontWeight: FontWeight.bold)),
                SizedBox(width: 200),
                badges.Badge(
                  position: badges.BadgePosition.custom(start: 18,bottom: 18),
                  child: Icon(
                      Icons.notifications_none_outlined,
                      size: 35),),],),
            SizedBox(height: 20),
             Column(
           crossAxisAlignment: CrossAxisAlignment.stretch,
               children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "Hello, Sara Rose",
                      style: theme.textTheme.titleMedium,),),
                    SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                      "How are you feeling today ?",
                        style: theme.textTheme.bodyMedium,),),],),
            SizedBox(height: 15),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 27,
                    backgroundImage: AssetImage("assets/images/Love.png"),),),
                const SizedBox(width: 40),
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 27,
                  backgroundImage: AssetImage("assets/images/Cool.png"),),
                const SizedBox(width: 40),
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 27,
                  backgroundImage: AssetImage("assets/images/Happy.png"),),
                const SizedBox(width: 40),
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 30,
                  backgroundImage: AssetImage("assets/images/Sad1.png"),),],),
            SizedBox(height:3 ),
            Row(
              children: [
                SizedBox(width: 28),
                Text("Love"),
                SizedBox(width: 60),
                Text("Cool"),
                SizedBox(width: 50),
                  Text("Happy"),
                SizedBox(width: 60),
                Text("Sad"),]),
                SizedBox(height: 30,),
                Row(
                  children: [
                    SizedBox(width: 15),
                    Text(
                      "Feature",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),),
                SizedBox(width: 180),
                Text(
                  "See more",
                  style: TextStyle(
                      color: Color(0xff027A48),
                  fontWeight: FontWeight.bold),),
                SizedBox(width: 3),
                Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Color(0xff027A48),
                    size:20 ,
                ),]),
            SizedBox(height: 10,),
            CarouselSlider(
              items: [
                for(int i = 0; i < itemFeatures.length; i++)
                  const FeatureWidget(),
              ],
              options: CarouselOptions(
                  onPageChanged: (index,reason){
                    setState(() {
                      currentIndex = index;
                    });},
                  autoPlay: true
              ),),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for(int i = 0; i < itemFeatures.length; i++)
                  Container(
                    width: 10,
                    height: 10,
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: currentIndex == i
                            ? const Color(0xff98A2B3)
                            : const Color(0xffD9D9D9),
                        shape: BoxShape.circle
                    ),),],),
            SizedBox(height: 20,),
                     Row(
                      children: [
                        SizedBox(width: 15),
                        Text(
                          "Exercise",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                          fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 180),
                        Text(
                          "See more",
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xff027A48),
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(width: 3),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Color(0xff027A48),
                          size:20 ,
                        ),
                      ],
                  ),
                SizedBox(height: 10),
                Row(
                  children: [
                  ExerciseWidget(
                   containerColor: Color(0xffFDF2FA),
                   iconImage: "assets/images/Group.png",
                   containerTitle:  "Relaxation",
                  ),
                 ExerciseWidget(
                  containerColor: Color(0xffFDF2FA),
                  iconImage: "assets/images/Frame.png",
                  containerTitle:   "Meditation",
                   ),
                   ],
                   ),
      Row(
      children: [
        ExerciseWidget(
          containerColor: Color(0xffFDF2FA),
          iconImage: "assets/images/Vector.png",
          containerTitle:  "Breathing",
        ),
            ExerciseWidget(
              containerColor: Color(0xffFDF2FA),
              iconImage: "assets/images/Yoga.png",
              containerTitle:  "Yoga",
            ),
      ])]));



  }
}
