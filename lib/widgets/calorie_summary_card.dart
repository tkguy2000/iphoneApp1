import 'package:flutter/material.dart';

class CalorieSummaryCard extends StatelessWidget {
  final double totalCalories;
  final double dailyGoal;
  final double protein;
  final double carbs;
  final double fat;

  const CalorieSummaryCard({
    super.key,
    required this.totalCalories,
    required this.dailyGoal,
    required this.protein,
    required this.carbs,
    required this.fat,
  });

  @override
  Widget build(BuildContext context) {
    final progress = totalCalories / dailyGoal;
    final remaining = dailyGoal - totalCalories;

    return Card(
      margin: const EdgeInsets.all(16.0),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              '${totalCalories.toStringAsFixed(0)} / ${dailyGoal.toStringAsFixed(0)} cal',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 8),
            LinearProgressIndicator(
              value: progress > 1 ? 1 : progress,
              minHeight: 10,
              backgroundColor: Colors.grey[300],
              valueColor: AlwaysStoppedAnimation<Color>(
                progress > 1 ? Colors.red : Colors.green,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              remaining > 0
                  ? '${remaining.toStringAsFixed(0)} cal remaining'
                  : '${(-remaining).toStringAsFixed(0)} cal over',
              style: TextStyle(
                color: remaining > 0 ? Colors.green : Colors.red,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _MacroColumn(
                  label: 'Protein',
                  value: protein,
                  color: Colors.blue,
                ),
                _MacroColumn(
                  label: 'Carbs',
                  value: carbs,
                  color: Colors.orange,
                ),
                _MacroColumn(
                  label: 'Fat',
                  value: fat,
                  color: Colors.purple,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _MacroColumn extends StatelessWidget {
  final String label;
  final double value;
  final Color color;

  const _MacroColumn({
    required this.label,
    required this.value,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          label,
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 12,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          '${value.toStringAsFixed(1)}g',
          style: TextStyle(
            color: color,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
