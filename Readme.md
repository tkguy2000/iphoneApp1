# Calorie Calculator App

A cross-platform mobile application built with Flutter for tracking daily calorie intake and macronutrients.

## Features

- Track daily food intake
- Calculate total calories, protein, carbs, and fat
- Set daily calorie goals
- Visual progress indicators
- Add custom food items with nutritional information

## Project Structure

```
lib/
├── main.dart                    # App entry point
├── models/
│   └── food_item.dart          # Food item data model
├── screens/
│   ├── home_screen.dart        # Main screen
│   └── add_food_screen.dart    # Add food form
├── widgets/
│   ├── calorie_summary_card.dart  # Daily summary widget
│   └── food_list.dart          # Food list widget
└── services/
    └── calorie_service.dart    # State management
```

## Getting Started

### Prerequisites

- Flutter SDK (3.0.0 or higher)
- Dart SDK
- iOS Simulator / Android Emulator or physical device

### Installation

1. Install dependencies:
```bash
flutter pub get
```

2. Run the app:
```bash
flutter run
```

## Dependencies

- `provider`: State management
- `shared_preferences`: Local data persistence
- `intl`: Internationalization and date formatting

## Architecture

This app follows a simple architecture pattern:
- **Models**: Data classes representing the app's entities
- **Services**: Business logic and state management using Provider
- **Screens**: Full-page UI components
- **Widgets**: Reusable UI components
