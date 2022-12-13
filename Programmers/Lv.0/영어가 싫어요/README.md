#  머쓱이보다 키 큰 사람

### 문제
<img src="https://user-images.githubusercontent.com/64088377/207194231-f9f55378-6f02-4706-9a49-05d11ee207ab.png" width="500" >


### 풀이 <br>
```swift 
import Foundation

var dic = ["zero" : "0",
           "one": "1",
           "two": "2",
           "three": "3",
           "four": "4",
           "five": "5",
           "six": "6",
           "seven": "7",
           "eight": "8",
           "nine": "9"]


func solution(_ numbers:String) -> Int {
    var answer = numbers
    
    for (key, value) in dic {
        answer = String(answer.replacingOccurrences(of: key,
                                                    with: value))
    }
    return Int(answer)!
}

solution("onefourzerosixseven")

```

### 정리 <br>
https://peppo.tistory.com/178

문제 출처 <br>
https://school.programmers.co.kr/learn/courses/30/lessons/120894



