#  피자 나눠 먹기(2)

### 문제
<img src="https://user-images.githubusercontent.com/64088377/198159851-df4f736f-51dd-4943-b7fb-41ee49125592.png" width="500" >


### 풀이 <br>
```swift 
import Foundation

func solution(_ n:Int) -> Int {
    var pizza = 1
    while (6 * pizza) % n != 0 {
        pizza += 1
    }
    return pizza
}

solution(10)

```

### 정리 <br>
https://peppo.tistory.com/161

문제 출처 <br>
https://school.programmers.co.kr/learn/courses/30/lessons/120815
