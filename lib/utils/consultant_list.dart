import 'package:flutter/material.dart';

class ConsultantList extends StatelessWidget {
  final String title;
  final String imagepath;
  final String category;

  ConsultantList({
    required this.title,
    required this.category,
    required this.imagepath,
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
                  color: Colors.grey.shade200
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

                  //images
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(imagepath,
                        width: 60,
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  SizedBox(width: 15,),
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
                      SizedBox(height: 10,),

                      //number of exercises
                      Text(category),
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
