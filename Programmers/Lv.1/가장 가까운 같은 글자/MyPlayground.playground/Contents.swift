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
