#  Valid Palindrome 

### 문제

주어진 문장(s)을 소문자로 바꾼후, 영문/숫자가 아닌걸 제거하고,

주어진 문장과 거꾸로 읽어도 똑같다면 true를 리턴, 다르다면 false를 리턴

<img width="50%" src = "https://github.com/Bhoon-coding/Algorithm.swiftpm/assets/64088377/9b12444b-a2bc-4fec-8ad8-c2dde8dd8a49">

### 풀이 <br>

```swift 
class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let convertedStr = s
            .lowercased()
            .filter { $0.isNumber || $0.isLetter }
        
        let reversedStr = String(convertedStr.reversed())
        
        return convertedStr == reversedStr ? true : false
        
    }
}
```
- 소문자로 바꿔주는 메서드 lowercased() 사용
- 영문/숫자만 걸러내기 위해 filter, isNumber, isLetter 사용
- 변형된 String을 뒤집기 위해 reversed() 사용 및 String으로 타입 변형

### 정리 <br>
https://peppo.tistory.com/207

문제 출처 <br>
https://leetcode.com/problems/valid-palindrome/
