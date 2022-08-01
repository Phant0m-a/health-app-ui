import 'package:day6_fitness/Animation/FadeAnimation.dart';
import 'package:day6_fitness/Dashboard.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    ));

class Home extends StatefulWidget {
  // const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
// constants
  TextStyle boxTextStyle = TextStyle(color: Colors.white, fontSize: 20);
  TextStyle boxSubhead = TextStyle(color: Colors.white, fontSize: 18);
  TextStyle headText =
      TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECECEC),
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 1,
          title: Text(
            ' Hello, Ahsan',
            style: TextStyle(color: Colors.black38, fontSize: 22),
          ),
          actions: [
            CircleAvatar(
            backgroundImage: AssetImage('assets/images/two.jpg'),
             
            ),
            SizedBox(width: 10,)
          ],
          ),

      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text(
                'Today',
                style: headText,
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(right: 15),
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                            colors: [Colors.blue, Colors.blue.withOpacity(.6)]),
                      ),
                      child: Column(
                        children: [
                          Text(
                            'Life Points',
                            style: boxTextStyle,
                          ),
                          Text(
                            '3500',
                            style: boxSubhead,
                          ),
                        ],
                      ),
                    ),
                  ),
                  //  2nd box r
                  Expanded(
                    child: Container(
                      
                      margin: EdgeInsets.only(right: 15),
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                            colors: [Colors.red, Colors.pink.withOpacity(.6)]),
                      ),
                      child: Column(
                        children: [
                          Text(
                            'Calories Consumed',
                            style: boxTextStyle,
                          ),
                          Text(
                            '1560',
                            style: boxSubhead,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text('Health Categories', style: headText),
              SizedBox(height: 15),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(10),
                color: Colors.white54,
                child: Column(
                  children: [

                        ActivityTile(title:'Swimming',icon:  Icons.timer,iconColor:        Colors.red.withOpacity(.6)),
                  
                        ActivityTile(title:'Skating',icon:  Icons.skateboarding,iconColor:        Colors.blue.withOpacity(.6)),
                  
                        ActivityTile(title:'Jogging',icon:  Icons.directions_walk,iconColor:        Colors.green.withOpacity(.6)),
                  
                        ActivityTile(title:'Karate',icon:  Icons.sports_gymnastics,iconColor:        Colors.orange.withOpacity(.6)),
                  
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget ActivityTile({Color iconColor, IconData icon, String title}) {
    return ListTile(
        leading: Text(title),
        trailing: Icon(
          icon,
          color:iconColor,
        ));
  }
}
