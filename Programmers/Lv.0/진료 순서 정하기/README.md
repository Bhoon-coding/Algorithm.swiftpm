#  진료 순서 정하기

### 문제
<img src="https://user-images.githubusercontent.com/64088377/200107260-6e012bcb-df83-4d06-b83c-4376d62d92b8.png" width="500" >


### 풀이 <br>
```swift 
import Foundation

func solution(_ emergency:[Int]) -> [Int] {
    var result: [Int] = []
    emergency.map { el in result.append(emergency.filter { $0 > el }.count + 1)}
    
    return result
}

solution([1, 2, 3, 4])

```


문제 출처 <br>
https://school.programmers.co.kr/learn/courses/30/lessons/120835
