# 카운트 다운

### 문제
<img src="https://github.com/user-attachments/assets/bb2cfa07-0cc3-43d0-8f58-007877ede1d8" width="500" >


### 풀이 <br>
```swift 
import Foundation

func solution(_ start_num:Int, _ end_num:Int) -> [Int] {
    var startNum = start_num
    var result: [Int] = []
    
    while startNum >= end_num {
        result.append(startNum)
        startNum -= 1
    }
    
    return result
}
solution(10, 3)


// MARK: - 다른 풀이

func solution2(_ start_num:Int, _ end_num:Int) -> [Int] {
    var result: [Int] = []
    
    for i in stride(from: start_num, through: end_num, by: -1) {
        result.append(i)
    }
    
    return result
}

solution2(10, 5)

// MARK: - 다른사람 풀이

func solution3(_ start:Int, _ end:Int) -> [Int] {
    return (end...start).reversed()
}

solution3(10, 3)


```

문제 출처 <br>
https://school.programmers.co.kr/learn/courses/30/lessons/181899
