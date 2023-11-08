import 'package:flutter/material.dart';

class CurrentRide extends StatelessWidget {
  String distance;
  bool helmetOn;

  CurrentRide({
    super.key,
    required this.distance,
    required this.helmetOn,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text(
          "Current Ride",
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),

            const Icon(
              Icons.person,
              size: 150,
            ),

            const SizedBox(height: 20,),

            const Text(
              "User Name",
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold
              ),
            ),

            const SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "You have Travelled: ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold
                    ),
                  ),

                  const SizedBox(width: 5,),

                  Text(
                    distance,
                    style: TextStyle(
                        color: Colors.grey[600]
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
