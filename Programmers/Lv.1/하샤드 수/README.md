#  하샤드 수

### 문제
<img src="https://user-images.githubusercontent.com/64088377/196064887-57501d7e-f58b-4577-ac57-9d41cef05595.png" width="500" >

### 풀이 <br>
```swift 
func solution(_ x:Int) -> Bool {
    // TODO: [x] String으로 변환 (Int로 다시 변환해 빈 배열에 넣기)
    // TODO: [x] reduce를 이용해 각 요소별 합구하기
    // wholeNumberValue는 옵셔널을 반환 -> compactMap을 사용해서 옵셔널 바인딩을 해줌.
    var totalValue = String(x).compactMap { $0.wholeNumberValue }.reduce(0) { $0 + $1 }
    // TODO: [x] x % 요소 별 합 == 0 ? true : false
    return x % totalValue == 0 ? true : false
}
solution(123)
```

### 정리 <br>
티스토리 복구되면 올릴 예정 :) <br>
카카오 화이팅

문제 출처 <br>
https://school.programmers.co.kr/learn/courses/30/lessons/12947
