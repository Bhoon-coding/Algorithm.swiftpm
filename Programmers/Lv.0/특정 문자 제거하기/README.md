# 특정 문자 제거하기

### 문제
<img src="https://github.com/user-attachments/assets/183fe350-ba88-42b5-bde0-6a0a2a71af6f" width="500" >


### 풀이 <br>
```swift 
import Foundation

func solution(_ my_string:String, _ letter:String) -> String {
    return my_string.filter { $0 != Character(letter)}
}
solution("abcdef", "f")

```

문제 출처 <br>
https://school.programmers.co.kr/learn/courses/30/lessons/120826
