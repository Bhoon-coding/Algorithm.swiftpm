#  음양 더하기

### 문제
<img src="https://user-images.githubusercontent.com/64088377/196824108-3c2a3ee2-83a0-4078-b822-cdda15a87623.png" width="500" >

### 사용 메소드 <br>
reduce()
enumerated()

### 풀이 <br>
```swift 
import Foundation

func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    // TODO: [x] signs에서 false가 있는 index만 absolutes의 index로 접근해 ' - ' 로 바꾸기
    var result: [Int] = []
    for (idx, el) in signs.enumerated() {
        el == true ? result.append(absolutes[idx]) : result.append(-absolutes[idx])
    }
    // TODO: [x] 위 내용을 적용하고 총합 구하기 (reduce)
    return result.reduce(0, { $0 + $1 })
}

solution([4, 7, 12], [true, false, true])

```

### 정리 <br>
https://peppo.tistory.com/157

문제 출처 <br>
https://school.programmers.co.kr/learn/courses/30/lessons/76501
