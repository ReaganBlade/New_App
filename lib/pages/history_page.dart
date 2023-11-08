import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Center(child: Text("User History")),
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              const Icon(
                Icons.person,
                size: 100,
              ),
              const Text(
                "User Name",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: const Row(
                        children: [
                          Text(
                            "Distance: ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Text(
                              "10kms"
                          )
                        ],
                      ),
                    ),

                    Container(
                      child: const Row(
                        children: [
                          Text(
                            "Time: ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Text(
                            "1800hrs",
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
