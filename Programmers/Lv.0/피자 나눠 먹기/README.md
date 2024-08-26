#  피자 나눠 먹기

### 문제
<img src="https://github.com/user-attachments/assets/c04d7488-3435-4039-9af6-333a24b96333" width="500" >


### 풀이 <br>
```swift 
import Foundation

func solution(_ n:Int) -> Int {
    var pizza: Int = 1
    var needCount = n
    
    while needCount > 7 {
        needCount -= 7
        pizza += 1
    }
    
    return pizza
}

solution(15)
```

문제 출처 <br>
https://school.programmers.co.kr/learn/courses/30/lessons/120814
