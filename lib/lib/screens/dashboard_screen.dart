import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Mock dane użytkownika
    double caloriesPercent = 0.65; // 65% dziennego limitu
    double proteinPercent = 0.5;
    double carbsPercent = 0.7;
    double fatPercent = 0.4;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        backgroundColor: const Color(0xFF1E88E5),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Pierścień kalorii
            CircularPercentIndicator(
              radius: 120.0,
              lineWidth: 15.0,
              percent: caloriesPercent,
              center: Text("${(caloriesPercent * 100).toInt()}%"),
              progressColor: Colors.orange,
              backgroundColor: Colors.grey.shade300,
              circularStrokeCap: CircularStrokeCap.round,
              animation: true,
            ),
            const SizedBox(height: 24),
            // Makro
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    CircularPercentIndicator(
                      radius: 80,
                      lineWidth: 10,
                      percent: proteinPercent,
                      center: const Text("B\n50%", textAlign: TextAlign.center),
                      progressColor: Colors.red,
                      backgroundColor: Colors.grey.shade300,
                      circularStrokeCap: CircularStrokeCap.round,
                      animation: true,
                    ),
                    const SizedBox(height: 8),
                    const Text("Protein"),
                  ],
                ),
                Column(
                  children: [
                    CircularPercentIndicator(
                      radius: 80,
                      lineWidth: 10,
                      percent: carbsPercent,
                      center: const Text("W\n70%", textAlign: TextAlign.center),
                      progressColor: Colors.blue,
                      backgroundColor: Colors.grey.shade300,
                      circularStrokeCap: CircularStrokeCap.round,
                      animation: true,
                    ),
                    const SizedBox(height: 8),
                    const Text("Carbs"),
                  ],
                ),
                Column(
                  children: [
                    CircularPercentIndicator(
                      radius: 80,
                      lineWidth: 10,
                      percent: fatPercent,
                      center: const Text("T\n40%", textAlign: TextAlign.center),
                      progressColor: Colors.green,
                      backgroundColor: Colors.grey.shade300,
                      circularStrokeCap: CircularStrokeCap.round,
                      animation: true,
                    ),
                    const SizedBox(height: 8),
                    const Text("Fat"),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 32),
            // AI motywacja
            Card(
              color: Colors.blue.shade50,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: const [
                    Text(
                      "Hi! Keep it up 💪",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Text("You've reached 65% of your daily calories. Stay hydrated and keep moving!"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
