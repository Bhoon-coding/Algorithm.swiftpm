#  가장 가까운 같은 글자

### 문제
<img width="500" alt="스크린샷 2022-10-10 오후 12 03 14" src="https://github.com/user-attachments/assets/612e42da-ae63-40a0-8461-2280fa22e71d">

### 풀이 <br>
```swift 
import Foundation

//func solution(_ s:String) -> [Int] {
//    
//    var charDict: [Character: Int] = [:]
//    var result: [Int] = []
//    
//    s.enumerated().forEach { (index, char) in
//        if let prevCharIndex = charDict[char] {
//            charDict[char] = index
//            result += [index - prevCharIndex]
//        } else {
//            result.append(-1)
//            charDict[char] = index
//        }
//    }
//    return result
//}


// 리팩토링

func solution(_ s: String) -> [Int] {
    var word: [Character: Int] = [:]
    var result: [Int] = []

    for (index, val) in s.enumerated() {
        if let beforeIndex = word[val] {
            result.append(index - beforeIndex)
        } else {
            result.append(-1)
        }
        word[val] = index
    }

    return result
}
```


문제 출처 <br>
https://school.programmers.co.kr/learn/courses/30/lessons/142086
