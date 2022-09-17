import 'package:flutter/material.dart';
import 'package:mental_health_app/utils/consultant_list.dart';

import '../utils/exercise_lists.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

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

          //Categories section
          SizedBox(height: 30,),

          //Catergories and consultants Section
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
                    //Categories heading
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Categories',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black54,
                              fontSize: 20
                          ),),

                        Icon(Icons.more_horiz_rounded),
                      ],
                    ),

                    SizedBox(height: 20,),

                    //the category boxes
                    Row(
                      children: [

                        Row(
                          children: [
                            Column(
                              //the first column
                              children: [
                                Container(
                                  height: 70,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    color: Colors.purple,
                                    borderRadius: BorderRadius.circular(15)
                                  ),
                                  child: Center(
                                     child: Text('Relationship', style: TextStyle(color: Colors.white),),
                                  ),
                                ),
                                SizedBox(height: 20,),
                                Container(
                                  height: 70,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.circular(15)
                                  ),
                                  child: Center(
                                     child: Text('Education', style: TextStyle(color: Colors.white),),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 20,),
                            Column(
                              //the second column
                              children: [
                                Container(
                                  height: 70,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(15)
                                  ),
                                  child: Center(
                                     child: Text('Career', style: TextStyle(color: Colors.white),),
                                  ),
                                ),
                                SizedBox(height: 20,),
                                Container(
                                  height: 70,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(15)
                                  ),
                                  child: Center(
                                     child: Text('Others', style: TextStyle(color: Colors.white),),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),

                    SizedBox(height:40),


                    //Consultants heading
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Consultants',
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
                            ConsultantList(
                                title: 'Bobby Singer',
                                category: 'Education',
                                imagepath: 'lib/images/1.png'),
                            ConsultantList(
                                title: 'Dean Winchester',
                                category: 'Career',
                                imagepath: 'lib/images/2.png'),
                            ConsultantList(
                                title: 'Ifeanyi Ejindu',
                                category: 'Relationship',
                                imagepath: 'lib/images/3.png'),


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
