import 'package:flutter/material.dart';

class RecipesScreen extends StatelessWidget {
  const RecipesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Recipes"),
        backgroundColor: const Color(0xFF1E88E5),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            "Popular recipes",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),

          _recipeCard(
            title: "Chicken & Rice Bowl",
            calories: "520 kcal",
            premium: false,
          ),

          _recipeCard(
            title: "Salmon Power Meal",
            calories: "640 kcal",
            premium: true,
          ),

          _recipeCard(
            title: "High Protein Breakfast",
            calories: "410 kcal",
            premium: true,
          ),
        ],
      ),
    );
  }

  Widget _recipeCard({
    required String title,
    required String calories,
    required bool premium,
  }) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: Icon(
          Icons.restaurant,
          color: premium ? Colors.amber : Colors.grey,
        ),
        title: Text(title),
        subtitle: Text(calories),
        trailing: premium
            ? const Icon(Icons.lock, color: Colors.amber)
            : const Icon(Icons.check, color: Colors.green),
      ),
    );
  }
}
