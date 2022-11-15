#  k의 개수

### 문제
<img src="https://user-images.githubusercontent.com/64088377/201553213-95829497-ba5e-48cc-b71a-4c2df776849e.png" width="500" >


### 풀이 <br>
```swift 
import Foundation

func solution(_ i:Int, _ j:Int, _ k:Int) -> Int {
    return Array(i...j).flatMap { String($0).map { Int(String($0)) } }.filter { $0 == k }.count
}

solution(1, 13, 1)

```

### 정리 <br>
https://peppo.tistory.com/173

문제 출처 <br>
https://school.programmers.co.kr/learn/courses/30/lessons/120887
