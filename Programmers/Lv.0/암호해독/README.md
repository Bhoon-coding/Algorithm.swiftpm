#  암호 해독

### 문제
<img src="https://user-images.githubusercontent.com/64088377/200973888-14b811d4-7e1e-4c31-bd62-a5d270da98b1.png" width="500" >


### 풀이 <br>
```swift 
import Foundation

func solution(_ cipher:String, _ code:Int) -> String {
    return (1...cipher.count)
        .filter { $0.isMultiple(of: code) }
        .map { String(Array(cipher)[$0 - 1]) }
        .joined(separator: "")
}

solution("pfqallllabwaoclk", 2)
```

### 정리 <br>
https://peppo.tistory.com/174

문제 출처 <br>
https://school.programmers.co.kr/learn/courses/30/lessons/120892
