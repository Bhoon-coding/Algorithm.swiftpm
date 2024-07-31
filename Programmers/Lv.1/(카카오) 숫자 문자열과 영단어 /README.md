#  숫자 문자열과 영단어

### 문제
<img width="500" alt="스크린샷 2022-10-10 오후 12 03 14" src="https://github.com/user-attachments/assets/31608cf6-6705-45f5-929b-ddc3ea9a4847">
<img width="500" alt="스크린샷 2022-10-10 오후 12 03 14" src="https://github.com/user-attachments/assets/745cc435-dc84-457d-a966-75396dbad250">
<img width="500" alt="스크린샷 2022-10-10 오후 12 03 14" src="https://github.com/user-attachments/assets/d8f92349-ef0f-4327-9a67-900a082db68d">

### 풀이 <br>
```swift 
import Foundation

let numDic: [String: Int] = [
    "zero": 0,
    "one": 1,
    "two": 2,
    "three": 3,
    "four": 4,
    "five": 5,
    "six": 6,
    "seven": 7,
    "eight": 8,
    "nine": 9
]

func solution(_ s:String) -> Int {

    var tempArr: String = s
    var tempStrArr: [String] = []
    var resultArr: [Int] = []
    
    for i in tempArr {
        if let num = Int(String(i)) {
            resultArr.append(num)
        } else {
            tempStrArr.append(String(i))
        }
        let joinedStr = tempStrArr.joined()
        if let convertedNum = numDic[joinedStr] {
            resultArr.append(convertedNum)
            tempStrArr.removeAll()
        }
    }
    
    let toString = resultArr.map { String($0) }.joined()
    let result = Int(toString) ?? 0
    
    return result
}

solution("sixsix6")
```


문제 출처 <br>
https://school.programmers.co.kr/learn/courses/30/lessons/81301
