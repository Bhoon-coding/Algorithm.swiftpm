#  기사단원의 무기

### 문제
<img width="500" alt="스크린샷 2022-10-10 오후 12 03 14" src="https://github.com/user-attachments/assets/70a59f6b-5585-40b2-97a5-703e18951c58">
<img width="500" alt="스크린샷 2022-10-10 오후 12 03 14" src="https://github.com/user-attachments/assets/87a13163-a962-47cb-b206-e1ae57e975ea">

### 풀이 <br>
```swift 
import Foundation

func solution(_ number: Int, _ limit: Int, _ power: Int) -> Int {
    var divisorCount = Array(repeating: 0, count: number + 1)
    var totalIronWeight = 0

    // 약수의 개수를 계산
    for i in 1...number {
        // stride: (from: ~ 부터 | through: ~까지 | by: ~씩)
        // 각 배열에 배수의 갯수를 divisorCount 요소에 + 1
        for j in stride(from: i, through: number, by: i) {
            divisorCount[j] += 1
        }
    }

    // 공격력 제한을 적용하여 총 철의 무게 계산
    for count in divisorCount[1...] {
        if count > limit {
            totalIronWeight += power
        } else {
            totalIronWeight += count
        }
    }

    return totalIronWeight
}

solution(5, 2, 1)

```


문제 출처 <br>
https://school.programmers.co.kr/learn/courses/30/lessons/136798
