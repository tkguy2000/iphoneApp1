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

### Clone the repository and get dependencies

```sh
git clone <repository_url>
git pull
cd <project_directory>
flutter pub get
```

### web Browser

프로젝트에 web 지원이 이미 추가되어 있습니다. 다음 명령어로 실행 가능:

```sh
flutter create --platforms web .
flutter run -d chrome
```

### iOS Simulator

simulator를 먼저 시작해야 함

```sh
# flutter create --platforms ios .
open -a Simulator
flutter run
# quit the simulator: Cmd + Q
```

![alt text](images/Readme/image.png)

### Android Emulator

flutter emulators # 사용 가능한 emulator 목록 확인

```sh
flutter create --platforms android .
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

![alt text](images/Readme/image-1.png)

## platform 추가

```sh
# 모든 플랫폼 추가
flutter create --platforms ios,android,web,windows,linux,macos .
```
