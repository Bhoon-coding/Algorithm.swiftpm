#  qr code

### 문제
<img src="https://github.com/user-attachments/assets/75efcd3b-03bb-4176-aad1-668e3e3962cd" width="500" >
<img src="https://github.com/user-attachments/assets/50c719a3-d6c7-4a4b-b0c5-6b204295e8ba" width="500" >


### 풀이 <br>
```swift 
func solution(_ q:Int, _ r:Int, _ code:String) -> String {
    var result: String = ""
    for (index, char) in code.enumerated() {
        if index % q == r {
            result.append(char)
        }
    }
    return result
}
solution(3, 1, "qjnwezgrpirldywt")

// 다른사람 풀이

/// 1. [String]은 .joined()로 합칠 수 있다.
/// 2. 배열.enumerate()에서 고차함수를 사용해 index, value에 접근하는 방법은 `offeset(index)`, `element(value)` 이다.  
func solution2(_ q:Int, _ r:Int, _ code:String) -> String {
    return code.enumerated().filter { $0.offset % q == r }.map { String($0.element) }.joined()
}
solution2(3, 1, "qjnwezgrpirldywt")
```

문제 출처 <br>
https://school.programmers.co.kr/learn/courses/30/lessons/181903
