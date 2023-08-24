// 주어진 문자열(s)가 유효한지 확인
/// - 모든 열려있는 괄호는 같은 타입의 괄호로 닫혀야 함

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

// 다른사람이 푼 문제풀이
//class Solution {
//    func isValid(_ s: String) -> Bool {
//        guard s.count % 2 == 0 else { return false }
//        var stack: [Character] = []
//
//        for item in s {
//            switch item {
//            case "(":
//                stack.append(")")
//            case "[":
//                stack.append("]")
//            case "{":
//                stack.append("}")
//            default:
//                if stack.isEmpty || stack.removeLast() != item {
//                    return false
//                }
//            }
//        }
//
//        return stack.isEmpty
//    }
//}


Solution().isValid("{[]}")

