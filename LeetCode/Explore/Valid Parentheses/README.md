#  Valid Parentheses


### 문제

주어진 문자열(s)가 유효한지 확인
- 모든 열려있는 괄호는 같은 타입의 괄호로 닫혀야 함

<img width="50%" src = "https://github.com/Bhoon-coding/Algorithm.swiftpm/assets/64088377/e4c21e12-38b7-4795-bb3d-88c4081c2b9c">


### 풀이 <br>

```swift 
// 내가 푼 문제풀이
class Solution {
    func isValid(_ s: String) -> Bool {
        
        guard s.count > 1 else { return false }
        
        var stack: [Character] = []
        
        for char in s {
            print(stack)
            switch char {
            case "(", "{", "[":
                stack.append(char)
            case ")":
                if stack.last == "(" {
                    stack.removeLast()
                } else {
                    return false
                }
            case "}":
                if stack.last == "{" {
                    stack.removeLast()
                } else {
                    return false
                }
            case "]":
                if stack.last == "[" {
                    stack.removeLast()
                } else {
                    return false
                }
            default:
                return false
            }
        }
        
        return stack.isEmpty
    }
}
Solution().isValid("{[]}")
```

- 괄호가 짝이 맞아야하니 s.count가 1이하인건 바로 false를 리턴 (guard)
- 변수 stack에 열린괄호"(, {, [" 가 나오면 추가
- 닫힌 괄호 "), }, ]"가 나오면 stack 마지막 요소에 열린괄호와 같은 타입이 있는지 확인 
- 있으면 stack 마지막요소 삭제 (짝 맞추기 위함)
- 없으면 괄호를 닫을 수 없으므로 false 리턴
- stack이 다 비어있으면 괄호 짝이 다 맞고, 다 닫을 수 있으니 true 리턴 

<br>

```swift
// 다른사람이 푼 문제풀이
class Solution {
    func isValid(_ s: String) -> Bool {
        guard s.count % 2 == 0 else { return false }
        var stack: [Character] = []

        for item in s {
            switch item {
            case "(":
                stack.append(")")
            case "[":
                stack.append("]")
            case "{":
                stack.append("}")
            default:
                if stack.isEmpty || stack.removeLast() != item {
                    return false
                }
            }
        }

        return stack.isEmpty
    }
}


Solution().isValid("{[]}")
```
- s.count가 홀수면 괄호가 짝이 안맞으니 false 리턴
- 열린괄호가 나오면 해당 타입에 맞는 닫힌괄호를 stack에 추가함
- 다음 요소가 열린괄호 외 다른 문자 또는 닫힌괄호일때 stack이 비어있거나, stack의 마지막요소와 같지 않으면 false 리턴

### 정리 <br>
https://peppo.tistory.com/209

문제 출처 <br>
https://leetcode.com/problems/valid-parentheses/description/
