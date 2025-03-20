import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Fixed color assignment
      body: SafeArea(
        child: Container(
          color: Colors.white,
        child:Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: const [
                    Icon(Icons.male, size:150),
                    Text("Male"),
                  ],
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children:const [
                    Icon(Icons.female, size:150),
                    Text("Female"),
                  ],
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                     const Text("Hieght",
                     style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                     ),
                    ),
                      const Text(
                          "176", 
                            style: TextStyle(
                            color: Colors.red, 
                            fontSize: 50, 
                            fontWeight: FontWeight.bold, // Corrected placement
                          ),
                        ),
                        Row(
                          children: [FloatingActionButton(
                            onPressed: null, 
                            child: Icon(
                              Icons.remove, 
                            size:40,),),
                            const SizedBox(width: 20,),
                            FloatingActionButton(
                            onPressed: null, 
                            child: Icon(
                              Icons.add, 
                            size:40,),),
                          ],

                        )
                  ],
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                     const Text("Width",
                     style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                     ),
                    ),
                      const Text(
                          "50", 
                            style: TextStyle(
                            color: Colors.red, 
                            fontSize: 50, 
                            fontWeight: FontWeight.bold, // Corrected placement
                          ),
                        ),
                        Row(
                          children: [FloatingActionButton(
                            onPressed: null, 
                            child: Icon(
                              Icons.remove, 
                            size:40,),),
                            const SizedBox(width: 20,),
                            FloatingActionButton(
                            onPressed: null, 
                            child: Icon(
                              Icons.add, 
                            size:40,),),
                          ],

                        )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
        )
        
      )
    );
  }
}
