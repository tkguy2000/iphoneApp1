# Readme

# iPhone 앱 개발 가이드 (Swift 초보자용)

## 개발 환경 설정

### 필수 도구

- **Xcode**: Apple의 공식 IDE (Mac App Store에서 무료 다운로드)
- **macOS**: Xcode는 macOS에서만 실행 가능
- **Apple Developer Account**: 실제 기기에서 테스트하려면 필요 (무료 계정으로도 가능)

## Swift 기본 문법

### 변수와 상수

```swift
// 변수 (값 변경 가능)
var name = "홍길동"
var age = 25

// 상수 (값 변경 불가)
let pi = 3.14
let appName = "MyApp"
```

### 데이터 타입

```swift
let message: String = "안녕하세요"
let count: Int = 10
let price: Double = 9.99
let isActive: Bool = true
```

### 함수

```swift
func greet(name: String) -> String {
    return "안녕하세요, \(name)님!"
}

let greeting = greet(name: "철수")
```

## SwiftUI 기본

SwiftUI는 Apple의 최신 UI 프레임워크입니다.

### 간단한 화면 구성

```swift
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("안녕하세요!")
                .font(.largeTitle)
                .padding()

            Button("버튼 클릭") {
                print("버튼이 클릭되었습니다")
            }
        }
    }
}
```

### 주요 UI 컴포넌트

#### Text (텍스트)

```swift
Text("Hello, World!")
    .font(.title)
    .foregroundColor(.blue)
    .padding()
```

#### Button (버튼)

```swift
Button("클릭하세요") {
    // 버튼 클릭 시 실행될 코드
}
.buttonStyle(.borderedProminent)
```

#### Image (이미지)

```swift
Image(systemName: "star.fill")
    .foregroundColor(.yellow)
    .font(.system(size: 50))
```

#### TextField (입력 필드)

```swift
@State private var text = ""

TextField("입력하세요", text: $text)
    .textFieldStyle(.roundedBorder)
    .padding()
```

### 레이아웃

#### VStack (세로 정렬)

```swift
VStack {
    Text("첫 번째")
    Text("두 번째")
    Text("세 번째")
}
```

#### HStack (가로 정렬)

```swift
HStack {
    Text("왼쪽")
    Text("가운데")
    Text("오른쪽")
}
```

#### ZStack (겹쳐서 표시)

```swift
ZStack {
    Rectangle()
        .fill(.blue)
    Text("위에 표시")
        .foregroundColor(.white)
}
```

## 상태 관리

### @State

뷰 내부에서 사용하는 간단한 상태

```swift
struct CounterView: View {
    @State private var count = 0

    var body: some View {
        VStack {
            Text("카운트: \(count)")
            Button("증가") {
                count += 1
            }
        }
    }
}
```

### @Binding

부모 뷰의 상태를 자식 뷰에서 사용

```swift
struct ChildView: View {
    @Binding var isOn: Bool

    var body: some View {
        Toggle("스위치", isOn: $isOn)
    }
}
```

## 첫 번째 앱 만들기 예제

### 간단한 카운터 앱

```swift
import SwiftUI

struct ContentView: View {
    @State private var count = 0

    var body: some View {
        VStack(spacing: 20) {
            Text("카운터 앱")
                .font(.largeTitle)
                .fontWeight(.bold)

            Text("\(count)")
                .font(.system(size: 80))
                .foregroundColor(.blue)

            HStack(spacing: 20) {
                Button("감소") {
                    count -= 1
                }
                .buttonStyle(.bordered)

                Button("초기화") {
                    count = 0
                }
                .buttonStyle(.bordered)

                Button("증가") {
                    count += 1
                }
                .buttonStyle(.borderedProminent)
            }
        }
        .padding()
    }
}
```

## 프로젝트 시작하기

1. Xcode 실행
2. "Create a new Xcode project" 선택
3. "iOS" → "App" 선택
4. 프로젝트 정보 입력:
   - Product Name: 앱 이름
   - Interface: SwiftUI
   - Language: Swift
5. 저장 위치 선택 후 "Create"

## 유용한 팁

### 미리보기 활용

```swift
#Preview {
    ContentView()
}
```

Xcode에서 실시간으로 UI를 미리 볼 수 있습니다.

### 자주 사용하는 수정자(Modifiers)

```swift
.padding()              // 여백 추가
.background(.blue)      // 배경색
.cornerRadius(10)       // 모서리 둥글게
.shadow(radius: 5)      // 그림자
.frame(width: 200)      // 크기 지정
.opacity(0.5)           // 투명도
```

## 다음 단계

1. **기본 앱 만들어보기**: 할일 목록, 계산기, 메모 앱 등
2. **네비게이션 학습**: NavigationView, NavigationLink
3. **데이터 저장**: UserDefaults, Core Data
4. **네트워크**: API 호출, JSON 파싱
5. **고급 기능**: 애니메이션, 제스처, 카메라 등

## 학습 리소스

- Apple 공식 Swift 문서
- SwiftUI Tutorials (developer.apple.com)
- Hacking with Swift (온라인 무료 강좌)
- 100 Days of SwiftUI

## 도움이 필요할 때

- 에러 메시지를 잘 읽어보세요
- Xcode의 자동완성 기능을 활용하세요
- 공식 문서를 참고하세요
- 커뮤니티에 질문하세요 (Stack Overflow, Reddit 등)

---

**화이팅! 🚀**
