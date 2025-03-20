import 'package:bmi/constants.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int Hieght = 150;
  int weight = 70;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Fixed color assignment
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
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
            const SizedBox(height: 50,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                       const Text("Hieght",
                       style: kInputLabelColor
                      ),
                         Text(
                            "$Hieght", 
                              style: kInputLabelColor
                          ),
                          Row(
                            children: [FloatingActionButton(
                              onPressed: (){
                                setState(() {
                                  if(Hieght>50)
                                  Hieght--;
                                });
                          
                                print("Hieght");
                              }, 
                              child: Icon(
                                Icons.remove, 
                              size:40,),),
                              const SizedBox(width: 20,),
                              FloatingActionButton(
                              onPressed: (){
                                setState(() {
                                  Hieght++;
                                });
                              }, 
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
                        Text(
                            "$weight", 
                              style: kInputLabelColor
                          ),
                          Row(
                            children: [FloatingActionButton(
                              onPressed:(){
                                setState(() {
                                  if(weight>0)
                                 weight--; 
                                });
                              }, 
                              child: Icon(
                                Icons.remove, 
                              size:40,),),
                              const SizedBox(width: 20,),
                              FloatingActionButton(
                              onPressed: (){
                                setState(() {
                                  weight++;
                                });
                              }, 
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
            const SizedBox(height: 50,),
            Column(
              children: [
                Text(
                      "BMI",
                       style: TextStyle(fontSize: 30),
                    ),

                Text("22.00",
                style: kInputColor,
                )
              ],
          
            )
          ],
                ),
          ),
        )
        
      )
    );
  }
  void onHeightMinus(){
    print("h m");
  }
}
