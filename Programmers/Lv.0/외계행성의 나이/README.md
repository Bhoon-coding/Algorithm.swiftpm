#  외계행성의 나이

### 문제
<img src="https://user-images.githubusercontent.com/64088377/199134098-830a1a37-74c6-4ff2-b78a-7dc551430b7c.png" width="500" >


### 풀이 <br>
```swift 
import Foundation

let ageKey: [Int: String] = [
    0: "a",
    1: "b",
    2: "c",
    3: "d",
    4: "e",
    5: "f",
    6: "g",
    7: "h",
    8: "i",
    9: "j"
]

func solution(_ age:Int) -> String {
    var result: [String] = []
    let digits: [Int] = String(age).compactMap { Int(String($0)) }
    for num in digits {
        result.append(ageKey[num]!)
    }
    
    return result.joined()
}
```

### 정리 <br>
https://peppo.tistory.com/164

문제 출처 <br>
https://school.programmers.co.kr/learn/courses/30/lessons/120834
