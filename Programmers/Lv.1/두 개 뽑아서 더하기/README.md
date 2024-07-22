#  두 개 뽑아서 더하기

### 문제
<img src="https://github.com/user-attachments/assets/192e70c3-2f7b-4314-8f04-473f7fe44563" width="500" >
<img src="https://github.com/user-attachments/assets/7c3fea5e-d598-44f9-9fbf-350564742e22" width="500" >


### 풀이 <br>
```swift
import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    var tempArr: [Int] = []
    var result: [Int] = []
    
    for (i, num) in numbers.enumerated() {
        for j in 1..<numbers.count {
            if i != j {
                if !tempArr.contains(num + numbers[j]) {
                    tempArr.append(num + numbers[j])
                }
            }
        }
    }
    result = tempArr.sorted(by: <)
    return result
}

solution([2,1,3,4,1])



// 다른사람의 풀이
func solution2(_ numbers: [Int]) -> [Int] {
    var arr: [Int] = []
    
    for i in 0..<numbers.count {
        for j in i + 1..<numbers.count {
            arr.append(numbers[i] + numbers[j])
        }
    }
    return Set(arr).sorted()
}

solution2([2,1,3,4,1])

```

문제 출처 <br>
https://school.programmers.co.kr/learn/courses/30/lessons/68644
