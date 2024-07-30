#  추억 점수

### 문제
<img width="500" alt="스크린샷 2022-10-10 오후 12 03 14" src="https://github.com/user-attachments/assets/5874369d-cdc7-4fd6-ab1b-b4e2a02acc0c">

### 풀이 <br>
```swift 
import Foundation

func solution(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {
    var tempDic: [String: Int] = [:]
    
    for (person, point) in zip(name, yearning) { // zip을 사용해 key:value 상태로 저장
        tempDic[person] = point
        // 1. ["may": 5]
        // 2. ["may": 5, "kein": 10]
        // 3. ["may": 5, "kein": 10, "kain": 1]
        // 4. ["kain": 1, "kein": 10, "may": 5, "radi": 3]
    }
    
    var result: [Int] = []
    
    for people in photo {
        var sum = 0
        
        for person in people {
            if let missedPoint = tempDic[person] { // tempDic에 person 키 값이 있으면 점수 합산
                sum += missedPoint
            }
        }
        result.append(sum)
    }
    return result
}

solution(
    ["may", "kein", "kain", "radi"],
    [5, 10, 1, 3],
    [["may", "kein", "kain", "radi"],["may", "kein", "brin", "deny"], ["kon", "kain", "may", "coni"]]
)


```


문제 출처 <br>
https://school.programmers.co.kr/learn/courses/30/lessons/176963
