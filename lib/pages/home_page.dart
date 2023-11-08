import 'package:flutter/material.dart';
import '../pages/current_ride.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'history_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Center(
            child: Text(
              "Home Page",
              style: TextStyle(
                  fontWeight: FontWeight.bold
              ),
            )
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
                children: [

                  const SizedBox(height: 10,),

                  const Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Row(
                      children: [
                        Text(
                            "Current Ride",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            )
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 10,),

                  // Current Ride Widget
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CurrentRide(
                                distance: "10km",
                                helmetOn: true,
                              )
                          )
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 240,
                        width: 1000,
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade500,
                                offset: const Offset(4.0, 4.0),
                                blurRadius: 15,
                                spreadRadius: 1,
                              ),
                              const BoxShadow(
                                color: Colors.white,
                                offset: Offset(-4, -4),
                                blurRadius: 15,
                                spreadRadius: 1,
                              )
                            ]
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                                  child: CircularPercentIndicator(
                                    animation: true,
                                    animationDuration: 1000,
                                    radius: 100,
                                    lineWidth: 20,
                                    percent: 0.4,
                                    progressColor: Colors.deepPurple,
                                    backgroundColor: Colors.deepPurple.shade100,
                                    circularStrokeCap: CircularStrokeCap.round,
                                    center: const Center(
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.bike_scooter,
                                            size: 50,
                                          ),
                                          Text(
                                            "Monthly Quota",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold
                                            ),
                                          ),
                                          Text("40% used")
                                        ],
                                      ),
                                    ),
                                  ),
                                ),

                                const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                                  child: Center(
                                    child: Column(
                                      children: [
                                        Icon(
                                          Icons.person,
                                          size: 100,
                                        ),

                                        Text(
                                          "User Name",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),

                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 10,),

                  // History tile Title
                  const Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Row(
                      children: [
                        Text(
                            "History",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            )
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 10,),

                  // History Tile
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const HistoryPage()
                            )
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade500,
                                offset: const Offset(4.0, 4.0),
                                blurRadius: 15,
                                spreadRadius: 1,
                              ),
                              const BoxShadow(
                                color: Colors.white,
                                offset: Offset(-4, -4),
                                blurRadius: 15,
                                spreadRadius: 1,
                              )
                            ]
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20.0),
                                child: Icon(
                                  Icons.person,
                                  size: 50,
                                ),
                              ),
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start  ,
                                    children: [
                                      Text(
                                        "User name: ",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                          "Distance: ",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          )
                                      )
                                    ],
                                  ),

                                  Column(
                                    children: [
                                      Text(""),
                                      Text(
                                        "Time: ",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),


                  ),

                ]
            ),
          ),
        ),
      ),
    );
  }
}
