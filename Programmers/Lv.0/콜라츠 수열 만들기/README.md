#  콜라츠 수열 만들기

### 문제
<img src="https://github.com/Bhoon-coding/Algorithm.swiftpm/assets/64088377/6fce4e4a-ff8c-43d9-90f5-c8416d7634c7" width="500" >


### 풀이 <br>
```swift 
func solution(_ n:Int) -> [Int] {
    var result: [Int] = [n]
    var tempValue: Int = n
    
    while tempValue != 1 {
        if tempValue % 2 == 0 {
            tempValue = tempValue / 2
            result.append(tempValue)
        } else {
            tempValue = 3 * tempValue + 1
            result.append(tempValue)
        }
    }
    
    return result
}
```

문제 출처 <br>
https://school.programmers.co.kr/learn/courses/30/lessons/181919
