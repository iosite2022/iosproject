import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../const/styles.dart';




class ReusableCarrerPage extends StatelessWidget {
  const ReusableCarrerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carrera'),
      ),
      body: SingleChildScrollView(
        child: Column(
        children: [
           Padding(
             padding: const EdgeInsets.only(right: 210, top: 50, left: 30),
             child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Image(image: NetworkImage('https://via.placeholder.com/150'),
                    ),
                  ),
      
                    
                  
                  
                ],
      
              ),
              
           ),
           
           SizedBox(height: 20,),
      
           Divider(height: 50, color: Color(0xff0833A2) ,),
      
           Padding(
             padding: const EdgeInsets.only(left: 210, top: 20, right: 30),
             child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Image(image: NetworkImage('https://via.placeholder.com/150'),
                    ),
                  ),
      
                  
                ],
      
              ),
              
           ),
      
           SizedBox(height: 20,),
      
           Divider(height: 50, color: Color(0xff0833A2) ,),
      
           SizedBox(height: 145,),
      
           CurvedNavigationBar(
          backgroundColor: kPrimaryColor,
          color: kSecundaryColor,
          items: [
            Icon(
              FontAwesomeIcons.house,
              color: kIconColor,
            ),
            Icon(
              FontAwesomeIcons.peopleGroup,
              color: kIconColor,
            ),
            Icon(
              FontAwesomeIcons.addressBook,
              color: kIconColor,
            ),
          ]),
           
            ],
      
          ),
      ),
    
    );
  }
}