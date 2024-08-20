#  짝지어 제거하기

### 문제
<img width="500" alt="image" src="https://github.com/user-attachments/assets/9379b425-a56d-438c-84b1-d07ca8f9cea1">


### 풀이 <br>
```swift 
import Foundation

func solution(_ s:String) -> Int {
    var tempArr: [Character] = []
    
    for char in s {
        if let last = tempArr.last, last == char {
            tempArr.removeLast()
        } else {
            tempArr.append(char)
        }
    }
    
    return tempArr.isEmpty ? 1 : 0
}

solution("baabaa")
```


문제 출처 <br>
https://school.programmers.co.kr/learn/courses/30/lessons/12973
