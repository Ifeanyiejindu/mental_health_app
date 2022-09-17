import 'package:flutter/material.dart';

import '../utils/exercise_lists.dart';

class UserHomePage extends StatelessWidget {
  const UserHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //top part (part with hi Jared!)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //Hi name of the user
                    Text('Hi, Jared!', style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFF6FFFF),
                        fontSize: 20
                    ),),

                    SizedBox(height: 6,),


                    //date
                    Text('23 Jan, 2021', style: TextStyle(
                        color: Colors.white60
                    ),),
                  ],
                ),


                //notification
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Icon(Icons.notifications, color: Colors.white70,),
                )
              ],
            ),
          ),

          //search bar
          Center(
            child: Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.white24.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12)
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Search',
                      hintStyle: TextStyle(color: Colors.white70, fontWeight: FontWeight.bold),
                      icon: Icon(Icons.search, color: Colors.white70,)
                  ),
                ),
              ),
            ),
          ),

          //"how do you feel" section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 45.0, vertical: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('How do you feel?',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),
                    ),

                    Icon(Icons.more_horiz_rounded,
                      color: Colors.white70,),
                  ],
                ),

                SizedBox(height: 20,),

                //smiley boxes
                Row(
                  children: [

                    //smiley box 1
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              color: Colors.white24.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(12)
                          ),
                          child: Center(
                            child: Text('😔', style: TextStyle(
                                fontSize: 35
                            ),),
                          ),
                        ),

                        SizedBox(height: 10,),

                        // text below smiley
                        Text('Badly',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white70,
                              fontSize: 12
                          ),),
                      ],
                    ),
                    SizedBox(width: 20,),

                    //smileybox 2
                    Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              color: Colors.white24.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(12)
                          ),
                          child: Center(
                            child: Text('😊', style: TextStyle(
                                fontSize: 35
                            ),),
                          ),
                        ),

                        SizedBox(height: 10,),

                        // text below smiley
                        Text('Fine',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white70,
                              fontSize: 12
                          ),),
                      ],
                    ),
                    SizedBox(width: 20,),

                    //smileybox 3
                    Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              color: Colors.white24.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(12)
                          ),
                          child: Center(
                            child: Text('😁', style: TextStyle(
                                fontSize: 35
                            ),),
                          ),
                        ),

                        SizedBox(height: 10,),

                        // text below smiley
                        Text('Well',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white70,
                              fontSize: 12
                          ),),
                      ],
                    ),
                    SizedBox(width: 20,),

                    //smileybox 4
                    Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              color: Colors.white24.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(12)
                          ),
                          child: Center(
                            child: Text('😀', style: TextStyle(
                                fontSize: 35
                            ),),
                          ),
                        ),

                        SizedBox(height: 10,),

                        // text below smiley
                        Text('Excellent',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white70,
                              fontSize: 12
                          ),),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),

          //Excercises Section
          Expanded(
            child: Container(
              width: 400,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(40),
                ),
              ),

              child: Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 40.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //Exercise heading
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Exercises',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black54,
                              fontSize: 20
                          ),),

                        Icon(Icons.more_horiz_rounded),
                      ],
                    ),

                    //list of excercises
                    SizedBox(height: 20,),

                    Expanded(
                      child: ListView(
                          children:[
                            ExerciseList(
                                title: 'Speaking skills',
                                icon: Icons.favorite,
                                iconbackgroundColor: Colors.orange,
                                numberOfExercise: '16' ),
                            ExerciseList(
                              title: 'Reading speed',
                              numberOfExercise: '8',
                              icon: Icons.person,
                              iconbackgroundColor: Colors.blue,),
                            ExerciseList(
                              title: 'Walking speed',
                              numberOfExercise: '24',
                              icon: Icons.directions_walk,
                              iconbackgroundColor: Colors.red.shade400,),
                            ExerciseList(
                              title: 'Listenin speed',
                              numberOfExercise: '10',
                              icon: Icons.hearing,
                              iconbackgroundColor: Colors.green,),

                          ]),
                    ),

                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
