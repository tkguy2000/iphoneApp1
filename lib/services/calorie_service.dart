import 'package:flutter/foundation.dart';
import '../models/food_item.dart';

class CalorieService extends ChangeNotifier {
  final List<FoodItem> _todaysFoods = [];
  double _dailyCalorieGoal = 2000;

  List<FoodItem> get todaysFoods => List.unmodifiable(_todaysFoods);
  double get dailyCalorieGoal => _dailyCalorieGoal;

  double get totalCalories {
    return _todaysFoods.fold(0, (sum, item) => sum + item.calories);
  }

  double get totalProtein {
    return _todaysFoods.fold(0, (sum, item) => sum + item.protein);
  }

  double get totalCarbs {
    return _todaysFoods.fold(0, (sum, item) => sum + item.carbs);
  }

  double get totalFat {
    return _todaysFoods.fold(0, (sum, item) => sum + item.fat);
  }

  double get remainingCalories {
    return _dailyCalorieGoal - totalCalories;
  }

  void addFoodItem(FoodItem item) {
    _todaysFoods.add(item);
    notifyListeners();
  }

  void removeFoodItem(String id) {
    _todaysFoods.removeWhere((item) => item.id == id);
    notifyListeners();
  }

  void setDailyGoal(double goal) {
    _dailyCalorieGoal = goal;
    notifyListeners();
  }

  void clearToday() {
    _todaysFoods.clear();
    notifyListeners();
  }
}
