import 'package:flutter/material.dart';

class ExerciseList extends StatelessWidget {
  final String title;
  final icon;
  final String numberOfExercise;
  final iconbackgroundColor;

  ExerciseList({
    required this.title,
    required this.numberOfExercise,
    required this.icon,
    required this.iconbackgroundColor
});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      //this is main background
      child: Container(
        //you can use list tile for this but not suitable in this case cos its not flexible.
        height: 80,
        width: 370,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                  offset: Offset(1,6),
                  spreadRadius: 1,
                  blurRadius: 10,
                  color: Colors.grey.shade300
              )
            ]
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [

                  //the icon box
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: iconbackgroundColor
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Icon(icon, color: Colors.white,),
                    ),
                  ),

                  SizedBox(width: 10,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      //the Text title
                      Text(title,
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold
                        ),),
                      SizedBox(height: 3,),

                      //number of exercises
                      Text(numberOfExercise + ' Exercises'),
                    ],
                  ),
                ],
              ),
              Icon(Icons.more_horiz_rounded)
            ],
          ),
        ),
      ),
    );
  }
}
