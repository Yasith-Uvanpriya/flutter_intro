import 'package:bmi/constants.dart';
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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
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
                       style: kInputLabelColor
                      ),
                        const Text(
                            "176", 
                              style: kInputLabelColor
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
                       const Text("Wieght",
                       style: kInputLabelColor
                      ),
                        const Text(
                            "50", 
                              style: kInputLabelColor
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
            ),
            Column(
              children: [
                Text("BMI"),
                Text("22.00")
              ],
          
            )
          ],
                ),
          ),
        )
        
      )
    );
  }
}
