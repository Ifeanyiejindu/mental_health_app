import 'package:flutter/material.dart';

class Chat extends StatelessWidget {

  Widget _chatbox ({int chat = 0, String message='', String time=''}){
    return Row(
      mainAxisAlignment: chat == 0?MainAxisAlignment.start:MainAxisAlignment.end,
      children: [
        Flexible(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                  color: chat == 0 ?Color(0xFFF2F8FE):Color(0xFF287EBE),
                  borderRadius: chat == 0 ?BorderRadius.only(
                      bottomRight: Radius.circular(15),
                      topRight: Radius.circular(15),
                      topLeft: Radius.circular(15)) : BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      topLeft: Radius.circular(15))
              ),
              child:
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Center(
                      child: Text(message, style: TextStyle(
                          fontWeight: FontWeight.bold,
                        color: chat == 0? Colors.black : Colors.white
                      ),),
                    ),
                    SizedBox(width: 10,),
                    Center(child: Text(time, style: TextStyle(
                        color: chat == 0?Colors.grey:Colors.grey.shade200
                    ),)),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

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
                    //chat box arrangement

                    _chatbox(
                      chat: 0,
                      message: 'Hi Jason! How are you?',
                      time: '11.04'
                    ),

                    _chatbox(
                      chat: 1,
                      message: 'I\'m good, thanks! How are you?',
                      time: '11.04'
                    ),

                    _chatbox(
                      chat: 0,
                      message: 'I\'m great, are you free today?',
                      time: '11.04'
                    ),
                    SizedBox(height: 20,),
                    //the divider
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 1,
                            width: double.infinity,
                            color: Colors.grey.shade300,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Color(0xFFF2F8FE),
                              borderRadius: BorderRadius.circular(10)
                            ),
                              child: Center(child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Today'),
                              ))),
                        ),
                        Expanded(
                          child: Container(
                            height: 1,
                            width: double.infinity,
                            color: Colors.grey.shade300,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 150,),
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 250,
                          decoration: BoxDecoration(
                            color: Color(0xFFF2F8FE),
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Center(
                            child: Text(
                              'write a message..'
                            ),
                          ),
                        ),
                        SizedBox(width: 20,),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Color(0xFF287EBE),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Icon(Icons.mic, color: Colors.white,),
                        )
                      ],
                    )

                    
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

