#  삼총사

### 문제
<img width="500" alt="스크린샷 2022-10-10 오후 12 03 14" src="https://github.com/user-attachments/assets/0dbc4f1e-dd44-499e-992a-82dfce027d1f">
<img width="500" alt="스크린샷 2022-10-10 오후 12 03 14" src="https://github.com/user-attachments/assets/dbd60279-0ebe-4ff8-ac22-87c60682440b">

### 풀이 <br>
```swift 
import Foundation

func solution(_ number:[Int]) -> Int {
    var result: Int = 0
    for i in 0..<number.count {
        for j in i + 1..<number.count {
            for k in j + 1..<number.count {
                if number[i] + number[j] + number[k] == 0 { result += 1 }
            }
        }
    }
    return result
}

solution([-2, 3, 0, 2, -5])
```


문제 출처 <br>
https://school.programmers.co.kr/learn/courses/30/lessons/131705
