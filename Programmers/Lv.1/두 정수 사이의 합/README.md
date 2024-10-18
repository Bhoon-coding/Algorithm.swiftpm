#  두 정수 사이의 합

### 문제
<img src="https://github.com/user-attachments/assets/8b7a4630-1c73-40e5-a253-22c7c3e5dcd9" width="500" >


### 풀이 <br>
```swift
  func solution(_ a:Int, _ b:Int) -> Int64 {
    if a == b { return Int64(a) }
    
    let sortedArr: [Int] = [a, b].sorted()
    var result: Int = 0
    
    for num in stride(from: sortedArr[0], through: sortedArr[1], by: 1) {
        result += num
    }
    return Int64(result)
}

solution(5, 3)

```


문제 출처 <br>
https://school.programmers.co.kr/learn/courses/30/lessons/12912
