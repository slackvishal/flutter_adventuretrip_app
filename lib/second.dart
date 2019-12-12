import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: SecondTrip(),
    );
  }
}

class SecondTrip extends StatefulWidget {
  SecondTrip({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _SecondTripState createState() => _SecondTripState();
}

class _SecondTripState extends State<SecondTrip> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        overflow: Overflow.visible,
        children: <Widget>[
          Hero(
            tag: 'place',
            child: Container(
              width: 420.0,
              height: 320.0,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/img1.jpg")),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top:50.0, left: 25.0, right: 25.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 70.0,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(50.0)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Text("13 persons participate", style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Nunito'
                            ),
                            ),
                            SizedBox(width: 5.0,),
                            CircleAvatar(
                              radius: 18.0,
                              child: Icon(Icons.person),
                            ),
                            CircleAvatar(
                              radius: 18.0,
                              child: Icon(Icons.person),
                            ),
                            CircleAvatar(
                              radius: 18.0,
                              backgroundColor: const Color(0xff57766E),
                              child: Text("+11", style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.0
                              ),),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),

          Positioned(
            top: 280.0,
            child: Container(
              width: 415.0,
              decoration: BoxDecoration(
                color: const Color(0xff57766E),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20.0),
                  topLeft: Radius.circular(20.0),
                )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 70.0,),
                  Padding(
                    padding: const EdgeInsets.only(left:30.0),
                    child: Text("Short Walk Exploration", style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Nunito-Bold'
                    ),),
                  ),
                  SizedBox(height: 20.0,),
                  Padding(
                    padding: const EdgeInsets.only(left:30.0, right: 100.0),
                    child: Text("I'd love a little digest of all the things when i wake up and look at my phone", style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      letterSpacing: 0.7
                    ),),
                  ),
                  SizedBox(height: 30.0,),
                  Padding(
                    padding: const EdgeInsets.only(left:30.0),
                    child: Row(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("8.4km", style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Nunito-Bold',
                                  fontSize: 30.0
                                ),
                                ),
                                SizedBox(height: 5.0,),
                                Text("Route", style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14.0
                                ),),
                                SizedBox(height: 30.0,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text("5h 40m", style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Nunito-Bold',
                                        fontSize: 30.0
                                    ),
                                    ),
                                    SizedBox(height: 5.0,),
                                    Text("Total Duration", style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14.0
                                    ),)
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(width: 50.0,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("3320m", style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Nunito-Bold',
                                fontSize: 30.0
                            ),
                            ),
                            SizedBox(height: 5.0,),
                            Text("Highest point", style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14.0
                            ),),
                            SizedBox(height: 30.0,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("90%", style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Nunito-Bold',
                                    fontSize: 30.0
                                ),
                                ),
                                SizedBox(height: 5.0,),
                                Text("Difficulty", style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14.0
                                ),)
                              ],
                            ),

                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 45.0,),
                  Padding(
                    padding: const EdgeInsets.only(left:30.0, right: 30.0, bottom: 30.0),
                    child: Container(
                      height: 70.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.white
                      ),
                      child: Center(
                        child: Text("Book your Trip", style: TextStyle(
                          color: const Color(0xff57766E),
                          fontSize: 22.0,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.7
                        ),),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),

    );
  }
}