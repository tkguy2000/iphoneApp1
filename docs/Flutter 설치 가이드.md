# Flutter 설치 가이드 (Windows)

## 문제 상황

```bash
D:\iphoneApp1>flutter pub get
'flutter'은(는) 내부 또는 외부 명령, 실행할 수 있는 프로그램, 또는
배치 파일이 아닙니다.
```

Flutter SDK가 설치되어 있지 않거나 PATH 환경 변수에 등록되지 않은 상태입니다.

## Flutter 설치 방법

### 방법 1: 수동 설치

#### 1. Flutter SDK 다운로드

공식 웹사이트에서 Flutter SDK를 다운로드하세요:
- [https://docs.flutter.dev/get-started/install/windows](https://docs.flutter.dev/get-started/install/windows)

#### 2. 설치 단계

**Step 1: Flutter SDK 압축 해제**
- 다운로드한 zip 파일을 원하는 위치에 압축 해제 (예: `C:\src\flutter`)
- ⚠️ 주의: `C:\Program Files\` 같은 권한이 필요한 경로는 피하세요
- ⚠️ 경로에 공백이나 특수문자가 없는 위치를 선택하세요

**Step 2: 환경 변수 설정**

1. 시스템 환경 변수 편집 열기
   - Windows 검색에서 "환경 변수" 검색
   - "시스템 환경 변수 편집" 선택

2. Path 변수에 Flutter bin 경로 추가
   - 시스템 변수에서 "Path" 선택 후 "편집" 클릭
   - "새로 만들기" 클릭
   - Flutter bin 경로 추가: `C:\src\flutter\bin` (실제 설치 경로에 맞게 수정)
   - "확인" 클릭

3. 명령 프롬프트를 재시작하여 변경사항 적용

**Step 3: 설치 확인**

새 명령 프롬프트 창을 열고 다음 명령어 실행:

```bash
flutter doctor
```

### 방법 2: Chocolatey를 사용한 빠른 설치

Chocolatey가 설치되어 있다면 더 쉽게 설치할 수 있습니다:

```bash
choco install flutter
```

## 필요한 추가 도구

Flutter는 다음 도구들이 필요합니다:

### 1. Android 개발용 (필수)

- **Android Studio**
  - Android SDK
  - Android SDK Command-line Tools
  - Android SDK Platform-Tools
  - Android Emulator

### 2. Windows 데스크톱 앱용 (선택사항)

- **Visual Studio 2022**
  - "C++를 사용한 데스크톱 개발" 워크로드

### 3. 웹 개발용 (선택사항)

- **Google Chrome**

### 4. iOS 개발용 (Mac에서만 가능)

- **Xcode** (macOS만 해당)

## 설치 확인

설치가 완료되면 다음 명령어로 상세 설치 상태를 확인하세요:

```bash
flutter doctor -v
```

이 명령어는 다음 항목들을 확인합니다:
- Flutter SDK 설치 여부
- Android toolchain 설정
- Chrome 설치 여부
- Visual Studio 설치 여부
- 연결된 디바이스

### flutter doctor 출력 예시

```
Doctor summary (to see all details, run flutter doctor -v):
[✓] Flutter (Channel stable, 3.x.x, on Microsoft Windows)
[✓] Android toolchain - develop for Android devices
[✓] Chrome - develop for the web
[✓] Visual Studio - develop Windows apps
[✓] Android Studio (version 2023.x)
[✓] VS Code (version 1.x.x)
[✓] Connected device (2 available)
[✓] Network resources
```

## 프로젝트 실행

Flutter 설치가 완료되면 프로젝트 폴더에서 다음 명령어를 실행하세요:

```bash
# 의존성 설치
flutter pub get

# 사용 가능한 디바이스 확인
flutter devices

# 앱 실행
flutter run
```

## 문제 해결

### 1. 'flutter' 명령어를 찾을 수 없는 경우

- PATH 환경 변수가 제대로 설정되었는지 확인
- 명령 프롬프트를 재시작
- 컴퓨터를 재부팅

### 2. Android 라이센스 문제

```bash
flutter doctor --android-licenses
```

모든 라이센스에 'y'를 입력하여 동의

### 3. Android SDK를 찾을 수 없는 경우

Android Studio를 설치하고 초기 설정을 완료하세요.

## 다음 단계

1. Android Studio 또는 VS Code에 Flutter 플러그인 설치
2. Android Emulator 또는 실제 디바이스 연결
3. `flutter run` 명령어로 앱 실행

## 유용한 링크

- [Flutter 공식 문서](https://docs.flutter.dev/)
- [Flutter 시작하기](https://docs.flutter.dev/get-started/install)
- [Flutter 개발 도구 설정](https://docs.flutter.dev/get-started/editor)

## 작성 일시

2026-01-11
