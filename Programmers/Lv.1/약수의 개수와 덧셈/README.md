#  약수의 개수와 덧셈

### 문제

<img width="600" alt="스크린샷 2022-05-03 오전 11 17 18" src="https://user-images.githubusercontent.com/64088377/196305366-81d8357a-553a-4376-b512-109c06a3223e.png">


// ### 배운것

### 풀이
```swift 
import Foundation

func solution(_ left:Int, _ right:Int) -> Int {
    // TODO: [x] left -> right까지의 수 배열에 넣기
    let result = Array(left...right).reduce(0) { isEven($1) ? $0 + $1 : $0 - $1 }
    // TODO: [x] isEven이 true면 +, false 면 -
    return result
}

solution(13, 17)

func isEven(_ num: Int) -> Bool {
    var result: [Int] = []
    for n in 1...num {
//  TODO: [x] 약수 (0으로 나누어 떨어지는건 result 배열에 넣기
        if num % n == 0 {
          result.append(n)
        }
    }
    return result.count % 2 == 0 ? true : false
}

```

### 정리 <br>
https://peppo.tistory.com/m/156


문제 출처 <br>
https://school.programmers.co.kr/learn/courses/30/lessons/77884
