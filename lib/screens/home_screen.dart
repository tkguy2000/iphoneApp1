import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../services/calorie_service.dart';
import '../widgets/calorie_summary_card.dart';
import '../widgets/food_list.dart';
import 'add_food_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calorie Calculator'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              // TODO: Navigate to settings
            },
          ),
        ],
      ),
      body: Consumer<CalorieService>(
        builder: (context, calorieService, child) {
          return Column(
            children: [
              CalorieSummaryCard(
                totalCalories: calorieService.totalCalories,
                dailyGoal: calorieService.dailyCalorieGoal,
                protein: calorieService.totalProtein,
                carbs: calorieService.totalCarbs,
                fat: calorieService.totalFat,
              ),
              Expanded(
                child: FoodList(
                  foods: calorieService.todaysFoods,
                  onRemove: (id) => calorieService.removeFoodItem(id),
                ),
              ),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddFoodScreen()),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
