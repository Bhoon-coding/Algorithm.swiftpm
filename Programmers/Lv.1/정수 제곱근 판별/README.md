#  정수 제곱근 판별

### 문제
<img width="500" alt="스크린샷 2022-10-10 오후 12 03 14" src="https://github.com/user-attachments/assets/6844c2de-e669-4b6f-84b7-3f36daa38f92">

### 풀이 <br>
```swift 
import Foundation

func solution(_ n:Int64) -> Int64 {
    let sqrt = sqrt(Double(n)) // Error: variable used within its own initial value
    var result: Int64 = 0
    
    if pow(sqrt, 2) == Double(n) {
        result = Int64(pow(sqrt + 1, 2))
    } else {
        result = -1
    }
    
    return result
}

solution(121)


func solution2(_ n:Int64) -> Int64 {
    let num = Int64(sqrt(Double(n)))
    return num * num == n ? (num + 1) * (num + 1) : -1
}

solution(3)
```


문제 출처 <br>
https://school.programmers.co.kr/learn/courses/30/lessons/12934
