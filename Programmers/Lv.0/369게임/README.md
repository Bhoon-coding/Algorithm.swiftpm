#  369게임

### 문제
<img src="https://user-images.githubusercontent.com/64088377/197902170-7e9eb6a0-a0f6-40b3-a63b-c9ae889f90ff.png" width="500" >


### 풀이 <br>
```swift 
func solution(_ order:Int) -> Int {
    return String(order).filter { $0 == "3" || $0 == "6" || $0 == "9"}.count
}
```

### 정리 <br>
https://peppo.tistory.com/160

문제 출처 <br>
https://school.programmers.co.kr/learn/courses/30/lessons/120891
