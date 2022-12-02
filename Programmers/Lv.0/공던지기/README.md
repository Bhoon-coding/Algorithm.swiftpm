#  공던지기

### 문제
<img src="https://user-images.githubusercontent.com/64088377/205189185-17ae6a9a-7442-4ef3-8c6b-5c4ae4440b48.png" width="500" >
<img src="https://user-images.githubusercontent.com/64088377/205189182-29a3315d-2a2d-4eb4-9102-3c5beb41cf72.png" width="500" >


### 풀이 <br>
```swift 
func solution(_ numbers:[Int], _ k:Int) -> Int {
    print((k - 1) % 3)
    return numbers[2 * (k - 1) % numbers.count]
}

solution([1, 2, 3, 4, 5, 6], 5)

```

### 정리 <br>


문제 출처 <br>
https://school.programmers.co.kr/learn/courses/30/lessons/120843?language=swift
