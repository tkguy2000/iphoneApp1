# Calorie Calculator App

A cross-platform mobile application built with Flutter

## Features

- print hello world on app ui

## Getting Started

### Prerequisites

- Flutter SDK
- Dart SDK
- iOS Simulator / Android Emulator or physical device

## how to run

```sh
git clone <repository_url>
git pull
cd <project_directory>
flutter pub get

# 만약 web도 추가햇다면
flutter run -d chrome

# iOS Simulator에서 실행하기 (simulator를 먼저 시작해야 함):
open -a Simulator
flutter run
# quit the simulator: Cmd + Q

# Android Emulator에서 실행하기:
flutter emulators  # 사용 가능한 emulator 목록 확인
```

```sh
Id                    • Name                  • Manufacturer • Platform
apple_ios_simulator   • iOS Simulator         • Apple        • ios
Medium_Phone_API_36.1 • Medium Phone API 36.1 • Generic      • android
```

```sh
flutter emulators --launch <emulator_id>  # emulator 시작
flutter emulators --launch Medium_Phone_API_36.1
flutter run
```

![alt text](images/Readme/image.png)
