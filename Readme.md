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

### Web Browser

프로젝트에 web 지원이 이미 추가되어 있습니다. 다음 명령어로 실행 가능:

```sh
flutter create --platforms web .
flutter run -d chrome
```

### IOS

```sh
# iOS 플랫폼 추가
flutter create --platforms ios .

# simulator 시작
open -a Simulator

# device 목록 확인
flutter devices | grep ios

# iPhone 16 Plus (mobile)      • 84EBCFF8-CBE4-41EE-9CC7-C8032BD47185 • ios            • com.apple.CoreSimulator.SimRuntime.iOS-18-6 (simulator)

flutter run -d "iPhone 16 Plus"
# quit the simulator: Cmd + Q
```

![alt text](images/Readme/image.png)

### Android Emulator

```sh
# Android 플랫폼 추가
flutter create --platforms android .

# 사용 가능한 emulator 목록 확인
flutter emulators | grep android

Medium_Phone_API_36.1 • Medium Phone API 36.1 • Generic      • android

# emulator 시작
flutter emulators --launch <emulator_id>
flutter emulators --launch Medium_Phone_API_36.1

# app 실행
flutter run -d emulator-5554
```

![alt text](images/Readme/image-1.png)

## platform 추가

```sh
# 모든 플랫폼 추가
flutter create --platforms ios,android,web,windows,linux,macos .
```

## device 보기

```sh
flutter devices

sdk gphone64 x86 64 (mobile) • emulator-5554                        • android-x64    • Android 16 (API 36) (emulator)
iPhone 16 Plus (mobile)      • 84EBCFF8-CBE4-41EE-9CC7-C8032BD47185 • ios            • com.apple.CoreSimulator.SimRuntime.iOS-18-6 (simulator)


flutter emulators

Id                    • Name                  • Manufacturer • Platform
apple_ios_simulator   • iOS Simulator         • Apple        • ios
Medium_Phone_API_36.1 • Medium Phone API 36.1 • Generic      • android
```

## 전체 디바이스

```sh
flutter run -d all
```
