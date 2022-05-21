
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../const/styles.dart';


class Contacto extends StatelessWidget {
  final String CoordName;
  final String CoordNumber;
  final String CoordEmail;
  final String CareerName;
  final IconData career;

  const Contacto({Key? key, 
  required this.CoordName,
  required this.CoordNumber,
  required this.CoordEmail,
  required this.CareerName,
  required this.career} ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: const Text('Datos del coordinador'),
     ),
     backgroundColor: kPrimaryColor,
      body: Column(
       children: [
         Center(
           child: Container(
             margin: const EdgeInsets.only(top: 20),
             width: 200,
             height: 200,
             decoration: BoxDecoration(
               color: Colors.pink,
               borderRadius: BorderRadius.circular(100),
             ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Center(
                child: Image.asset('assets/tecnm.png',),
                ),
            ),
           ),
         ),
         
          Container( 
          alignment: Alignment.centerLeft,
           padding: const EdgeInsets.all(30),
           child: Text(
             CoordName,
             style: TextStyle(
               fontSize: 15,
               color: Colors.black,
               fontWeight: FontWeight.bold,
             ),
           ),
         ),
         Container( 
          alignment: Alignment.centerLeft,
           padding: const EdgeInsets.all(30),
           child: Text(
             CareerName,
             style: TextStyle(
               fontSize: 15,
               color: Colors.black,
               fontWeight: FontWeight.bold,
             ),
           ),
         ),
          Container( 
          alignment: Alignment.centerLeft,
           padding: const EdgeInsets.all(30),
           child:  Text(
             CoordEmail,
             style: TextStyle(
               fontSize: 15,
               color: Colors.black,
               fontWeight: FontWeight.bold,
             ),
           ),
         ),

          Container( 
          alignment: Alignment.centerLeft,
           padding: const EdgeInsets.all(30),
           child:  Text(
             CoordNumber,
             style: TextStyle(
               fontSize: 15,
               color: Colors.black,
               fontWeight: FontWeight.bold,
             ),
           ),
         ),

         SizedBox(height: 30,),

         Container(
           height: 5,
           width: 300,
           color: kSecundaryColor,
         ),

        const SizedBox(
          height: 30,
        ),

       const Text('CONTACTO',
       style: TextStyle(
         fontSize: 15,
         fontWeight: FontWeight.bold,
         color: Colors.black,
       ),
       ),
       
     const SizedBox(
        height: 10,
      ),
         
        Container(
                      alignment: Alignment.center,
                     padding: const EdgeInsets.only(left: 15),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  CupertinoButton(
                                    child: Icon(career, color: kSecundaryColor,),
                                     onPressed: (){}
                                  ),
                                  const Text('Saber más', style: TextStyle(
                                    color: Colors.black,
                                  ),),
                                ],
                                
                              ),
                             
                             
                              const Spacer(),

                              Column(
                                children: [
                                  CupertinoButton(
                                    child: const Icon(FontAwesomeIcons.envelopeCircleCheck, color: kSecundaryColor,), onPressed: (){}
                                    ),
                                    const Text('Gmail', style: TextStyle(
                                      color: Colors.black,
                                    ),),
                                ],
                              ),
                              
                                

                              const Spacer(),
                              
                             Container(
                               alignment: Alignment.centerRight,
                               child: Column(
                                 children: [
                                   CupertinoButton(
                                     child: const Icon(FontAwesomeIcons.squarePhone,color: kSecundaryColor,), onPressed: (){}
                                     ),
                                     const Text('Tel', style: TextStyle(
                                       color: Colors.black,
                                     ),),
                                 ],
                               ),
                             ),
                             
                               

                              
                            ],
                          ),
                        ],
                      ),
                    ),

       ],
     ),
    );
  }
}