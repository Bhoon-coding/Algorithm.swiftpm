#  머쓱이보다 키 큰 사람

### 문제
<img src="https://user-images.githubusercontent.com/64088377/197426713-4cf18382-3d4b-480f-95f5-91763367437e.png" width="500" >


### 풀이 <br>
```swift 
import Foundation

func solution(_ array:[Int], _ height:Int) -> Int {
    return array.filter { $0 > height }.count
}

solution([149, 180, 192, 170], 167)


```

### 정리 <br>


문제 출처 <br>
https://school.programmers.co.kr/learn/courses/30/lessons/120585
