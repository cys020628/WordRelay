# 끝말잇기 게임 (WordRelay) in SwiftUI

## 개요
이 앱은 SwiftUI를 사용하여 개발된 간단한 끝말잇기 게임입니다. 사용자가 단어를 입력하면 리스트에 추가되고, 끝말이 이어지지 않으면 경고 메시지가 나타납니다. 또한, 초기화 버튼을 통해 게임을 리셋할 수 있습니다.

![Image](https://github.com/user-attachments/assets/2c8152b2-af5e-4c1c-a135-611307ef39f1)

## 주요 기능 및 개념

### 1. **SwiftUI의 View 구조**
이 앱은 `VStack`, `HStack`, `Text`, `TextField`, `Button`, `List` 등을 활용하여 UI를 구성하였습니다.

- `VStack`: 전체적인 화면 배치를 세로 방향으로 구성하는 컨테이너입니다.
- `HStack`: 버튼과 제목 등을 가로 방향으로 정렬하는 데 사용됩니다.
- `Text`: 제목 및 입력한 단어 목록을 표시하는 역할을 합니다.
- `TextField`: 사용자가 단어를 입력하는 입력창입니다.
- `Button`: 단어를 추가하는 버튼 및 초기화 버튼을 구현하는 데 사용됩니다.
- `List`: 입력된 단어들을 표시하는 리스트입니다.

### 2. **@State 변수를 활용한 상태 관리**
SwiftUI에서는 `@State` 프로퍼티 래퍼를 사용하여 UI가 변할 수 있는 데이터를 관리합니다.

- `@State var nextWord: String = ""`
  - 사용자가 입력한 단어를 저장하는 변수입니다.
- `@State var words: [String] = []`
  - 입력된 단어들을 저장하는 배열입니다.
- `@State var showAlert: Bool = false`
  - 끝말잇기 규칙이 맞지 않을 때 경고 메시지를 띄우는 변수입니다.
- `@State var showResetAlert: Bool = false`
  - 게임을 초기화할 때 확인 메시지를 띄우는 변수입니다.

### 3. **사용자 입력 처리**

사용자가 `TextField`에 단어를 입력하고 버튼을 눌렀을 때, 끝말잇기 규칙을 검증한 후 `words` 배열에 추가합니다.

- **단어 검증 로직**:
  - `words` 배열이 비어있으면 그대로 추가합니다.
  - `words` 배열에 기존 단어가 있다면 마지막 단어의 마지막 글자와 새 단어의 첫 글자를 비교합니다.
  - 규칙이 맞으면 단어를 리스트에 추가하고, 틀리면 `showAlert`을 활성화하여 경고 메시지를 띄웁니다.

```swift
if(!words.isEmpty) {
    if(words.last?.last?.lowercased() == nextWord.first?.lowercased()) {
        words.append(nextWord)
        nextWord = ""
    } else {
        showAlert = true
    }
} else {
    words.append(nextWord)
    nextWord = ""
}
```

### 4. **알림(Alert) 기능**

SwiftUI의 `alert` 수정자를 사용하여 경고창을 띄울 수 있습니다.

- 끝말잇기 규칙을 어겼을 때:
```swift
.alert("끝말이 이어지는 단어를 입력해주세요.", isPresented: $showAlert) {
    Button("확인", role: .cancel) {
        showAlert = false
    }
}
```

- 초기화 버튼을 눌렀을 때 확인 메시지:
```swift
.alert("정말 초기화 하시겠습니까?", isPresented: $showResetAlert) {
    Button("초기화 하기", role: .destructive) {
        showResetAlert = false
        words.removeAll()
        nextWord = ""
    }
    Button("취소", role: .cancel) {
        showResetAlert = false
    }
}
```

### 5. **리스트(List) UI 구성**

입력된 단어를 화면에 표시하기 위해 SwiftUI의 `List` 뷰를 사용합니다. 최신 단어가 위쪽에 표시되도록 `words.reversed()`를 사용하여 순서를 반전시켰습니다.

```swift
List {
    ForEach(words.reversed(), id: \ .self) { word in
        Text(word)
            .font(.title2)
    }
}
```

### 6. **버튼 스타일 및 레이아웃 디자인**

SwiftUI의 `RoundedRectangle`과 `shadow`를 사용하여 버튼을 디자인하였습니다.

- 버튼 기본 스타일:
```swift
Button(action: {
    showResetAlert = true
}) {
    Text("초기화")
        .foregroundStyle(.white)
        .padding(.horizontal)
        .padding(.vertical, 12)
        .background(
            RoundedRectangle(cornerRadius: 10)
        )
}
```

- `Text` 제목 스타일:
```swift
Text(title)
    .font(.title)
    .bold()
    .padding(.horizontal, 20)
    .padding(.vertical, 16)
    .background(
        RoundedRectangle(cornerRadius: 15)
            .fill(Color.teal)
            .opacity(0.2)
            .shadow(radius: 5)
    )
    .padding(.top, 10)
    .frame(maxWidth: .infinity, alignment: .center)
```

## 결론
이 프로젝트를 통해 SwiftUI에서 `@State`를 활용한 상태 관리, `List`를 활용한 동적 UI 구성, `alert`을 활용한 사용자 피드백 제공 등을 학습할 수 있었습니다. 또한, 직관적인 UI 디자인을 위해 `RoundedRectangle`, `shadow`, `padding` 등의 SwiftUI 스타일링 요소를 활용하였습니다.

이제 이 내용을 깃허브에 `README.md` 파일로 저장하고 프로젝트를 관리하면 좋습니다!

