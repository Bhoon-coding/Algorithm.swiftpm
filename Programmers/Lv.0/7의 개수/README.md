#  369게임

### 문제
<img src="https://user-images.githubusercontent.com/64088377/203186561-4c915f9e-85ea-4756-91ab-0f06bf9aa48a.png" width="500" >


### 풀이 <br>
```swift 
func solution(_ array:[Int]) -> Int {
    return array
        .map { String($0) }
        .joined(separator: "")
        .filter { $0 == "7" }.count
}
```

### 정리 <br>
https://peppo.tistory.com/176

문제 출처 <br>
https://school.programmers.co.kr/learn/courses/30/lessons/120912
