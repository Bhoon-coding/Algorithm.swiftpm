#  중복된 숫자 개수

### 문제
<img src="https://user-images.githubusercontent.com/64088377/197425765-f8033019-656c-42cc-9cc8-e18af740ae6e.png" width="500" >


### 풀이 <br>
```swift 
import Foundation

func solution(_ array:[Int], _ n:Int) -> Int {
    return array.filter { $0 == n }.count
}

```

// ### 정리 <br>


문제 출처 <br>
https://school.programmers.co.kr/learn/courses/30/lessons/120583
