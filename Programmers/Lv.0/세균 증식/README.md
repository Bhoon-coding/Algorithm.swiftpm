#  세균 증식

### 문제
<img src="https://github.com/Bhoon-coding/Algorithm.swiftpm/assets/64088377/2d5ceff7-0fc8-4519-aeb4-f3bf045ce040" width="500" >


### 풀이 <br>
```swift 
func solution(_ n:Int, _ t:Int) -> Int {
    var result: Int = n
    for i in 1...t { result = result * 2 }
    return result
}
```

문제 출처 <br>
https://school.programmers.co.kr/learn/courses/30/lessons/120910
