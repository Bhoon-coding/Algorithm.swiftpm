# 최소직사각형


### 문제
<img width="500" alt="image" src="https://github.com/user-attachments/assets/69d73775-284d-4d91-8a0c-9f25a532d533">
<img width="500" alt="image" src="https://github.com/user-attachments/assets/395f46e8-8371-4375-bf61-2f8cb5a3f2ca">


### 풀이 <br>
```swift 
import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    var maxWidth = 0
    var maxHeight = 0
    
    for size in sizes {
        // 각 쌍에서 큰 값을 너비, 작은 값을 높이로 설정
        let sortedSize = size.sorted(by: >)
        maxWidth = max(maxWidth, sortedSize[0])
        maxHeight = max(maxHeight, sortedSize[1])
    }
    
    return maxWidth * maxHeight
}

print(solution([[60, 50], [30, 70], [60, 30], [80, 40]]))
print(solution([[10, 7], [12, 3], [8, 15], [14, 7], [5, 15]]))


```


문제 출처 <br>
https://school.programmers.co.kr/learn/courses/30/lessons/86491
