import 'package:flutter/material.dart';
import '../models/food_item.dart';

class FoodList extends StatelessWidget {
  final List<FoodItem> foods;
  final Function(String) onRemove;

  const FoodList({
    super.key,
    required this.foods,
    required this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    if (foods.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.restaurant_menu,
              size: 64,
              color: Colors.grey[400],
            ),
            const SizedBox(height: 16),
            Text(
              'No foods added yet',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Tap + to add your first food',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[500],
              ),
            ),
          ],
        ),
      );
    }

    return ListView.builder(
      itemCount: foods.length,
      itemBuilder: (context, index) {
        final food = foods[index];
        return Card(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          child: ListTile(
            title: Text(
              food.name,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              '${food.servingSize.toStringAsFixed(0)}${food.servingUnit} - '
              'P: ${food.protein.toStringAsFixed(1)}g, '
              'C: ${food.carbs.toStringAsFixed(1)}g, '
              'F: ${food.fat.toStringAsFixed(1)}g',
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '${food.calories.toStringAsFixed(0)} cal',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(width: 8),
                IconButton(
                  icon: const Icon(Icons.delete, color: Colors.red),
                  onPressed: () => onRemove(food.id),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
