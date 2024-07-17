import Foundation

func solution(_ s:String) -> [Int] {
    var charDict: [Character: Int] = [:]
    var result: [Int] = []
    
    s.enumerated().forEach { (index, char) in
        if let prevCharIndex = charDict[char] {
            charDict[char] = index
            result += [index - prevCharIndex]
        } else {
            result.append(-1)
            charDict[char] = index
        }
    }
    return result
}

//solution("banana")
