import Foundation

func solution(_ q:Int, _ r:Int, _ code:String) -> String {
    var result: String = ""
    for (index, char) in code.enumerated() {
        if index % q == r {
            result.append(char)
        }
    }
    return result
}
solution(3, 1, "qjnwezgrpirldywt")

// 다른사람 풀이

func solution2(_ q:Int, _ r:Int, _ code:String) -> String {
    return code.enumerated().filter { $0.offset % q == r }.map { String($0.element) }.joined()
}

solution2(3, 1, "qjnwezgrpirldywt")
