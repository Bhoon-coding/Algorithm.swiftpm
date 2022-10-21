#  양꼬치

### 문제
<img src="https://user-images.githubusercontent.com/64088377/197084138-ba9ded2f-1e73-4bc5-97c1-fc8db29784b3.png" width="500" >


### 풀이 <br>
```swift 
import Foundation

func solution(_ n:Int, _ k:Int) -> Int {
    // TODO: [x] 양꼬치(n)가 10이상 이면 n / 10 몫 만큼 k 에서 빼기
    var freeBeverage: Int = 0
    var beverage = k
    var result: Int = 0
    if n >= 10 {
        freeBeverage = (n / 10)
        beverage -= freeBeverage
        result = n * 12000 + beverage * 2000
    } else {
        result = n * 12000 + k * 2000
    }
    // TODO: [x] n * 12000
    // TODO: [x] k * 2000

    return result
}

solution(4, 6)

```

### 정리 <br>
https://peppo.tistory.com/158

문제 출처 <br>
https://school.programmers.co.kr/learn/courses/30/lessons/120830
