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
                  children: const [
                    Text("176", style: TextStyle(color: Colors.red)), 
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
          )
        ],
      ),
        )
        
      )
    );
  }
}
