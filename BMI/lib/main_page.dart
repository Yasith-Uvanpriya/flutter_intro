import 'package:bmi/constants.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int height = 150;  // Corrected variable name
  int weight = 70;

  late double bmi;

  @override
  void initState() {
    super.initState();
    bmi = calculateBMI(height: height, weight: weight);
  }

  double calculateBMI({required int height, required int weight}) {
    return weight / ((height / 100) * (height / 100)); // Corrected BMI formula
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: const [
                        Icon(Icons.male, size: 150),
                        Text("Male"),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: const [
                        Icon(Icons.female, size: 150),
                        Text("Female"),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const Text("Height", style: kInputLabelColor),
                        Text("$height", style: kInputLabelColor),
                        Row(
                          children: [
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  if (height > 50) height--;
                                  bmi = calculateBMI(height: height, weight: weight);
                                });
                              },
                              child: const Icon(Icons.remove, size: 40),
                            ),
                            const SizedBox(width: 20),
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  height++;
                                  bmi = calculateBMI(height: height, weight: weight);
                                });
                              },
                              child: const Icon(Icons.add, size: 40),
                            ),
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
                        const Text("Weight", style: kInputLabelColor),
                        Text("$weight", style: kInputLabelColor),
                        Row(
                          children: [
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  if (weight > 0) weight--;
                                  bmi = calculateBMI(height: height, weight: weight);
                                });
                              },
                              child: const Icon(Icons.remove, size: 40),
                            ),
                            const SizedBox(width: 20),
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  weight++;
                                  bmi = calculateBMI(height: height, weight: weight);
                                });
                              },
                              child: const Icon(Icons.add, size: 40),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              Column(
                children: [
                  const Text("BMI", style: TextStyle(fontSize: 30)),
                  Text(
                    bmi.toStringAsFixed(2), // Convert BMI to 2 decimal places
                    style: kInputColor,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
