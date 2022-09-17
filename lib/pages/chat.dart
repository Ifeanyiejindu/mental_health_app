import 'package:flutter/material.dart';

class Chat extends StatelessWidget {

  int isGrey = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //top part (part with Bobby Singer)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Icon(Icons.arrow_back_rounded, color: Colors.white70,),
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //Hi name of the user
                    Text('Bobby Singer', style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFF6FFFF),
                        fontSize: 20
                    ),),

                    SizedBox(height: 6,),


                    //date
                    Text('Online', style: TextStyle(
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
                  child: Icon(Icons.wifi_calling_rounded, color: Colors.white70,),
                )
              ],
            ),
          ),

          SizedBox(height: 10,),

          //Chat Interface
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
                  children: [
                    //greybox decoration
                    Container(
                      height: 60,
                      width: 250,
                      decoration: BoxDecoration(
                        color: Color(0xFFF2F8FE),
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(15),
                            topRight: Radius.circular(15),
                            topLeft: Radius.circular(15))
                      ),
                      child:
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Center(
                              child: Text('Hi Jason! How are you?', style: TextStyle(
                                fontWeight: FontWeight.bold
                              ),),
                            ),

                            Center(child: Text('11.04', style: TextStyle(
                              color: Colors.grey
                            ),))
                          ],
                        ),
                      ),
                    ),

                    //blue chatbox
                    Container(
                      height: 60,
                      decoration: BoxDecoration(
                        color: Color(0xFF287EBE),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                            topLeft: Radius.circular(15))
                      ),
                      child:
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Center(
                              child: Text('I\'m good thanks! How are you?' , style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.white,
                              ),),
                            ),

                            Center(child: Text('11.04', style: TextStyle(
                              color: Colors.white70
                            ),))
                          ],
                        ),
                      ),
                    ),

                    Container(
                      height: 60,
                      decoration: BoxDecoration(
                          color: Color(0xFFF2F8FE),
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(15),
                              topRight: Radius.circular(15),
                              topLeft: Radius.circular(15))
                      ),
                      child:
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          children: [
                            Text('Im great! Are you free today?', style: TextStyle(
                                fontWeight: FontWeight.bold
                            ),),
                            SizedBox(width: 10,),
                            Text('11.04', style: TextStyle(
                                color: Colors.grey
                            ),)
                          ],
                        ),
                      ),
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
