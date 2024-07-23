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

//func solution(_ s: String) -> [Int] {
//    var word: [Character: Int] = [:]
//    var result: [Int] = []
//
//    for (index, val) in s.enumerated() {
//        if let beforeIndex = word[val] {
//            result.append(index - beforeIndex)
//        } else {
//            result.append(-1)
//        }
//        word[val] = index
//    }
//
//    return result
//}


//func solution(_ s: String) -> [Int] {
//    var word: [Character: Int] = [:]
//    var result: [Int] = []
//    
//    /// Dictionary 타입의 word 생성
//    /// word[val] 로 word에 Charactor 값이 있는지 확인
//    /// 없으면 result에 -1 append
//    /// 있으면 해당 word 값(index)에 해당 index로 갈아끼우기 or 추가
//    /// 반복문 한바퀴 돈 다음 char: index 저장
//    
//    for (idx, val) in s.enumerated() {
//        print(word[val])
//        if let beforeIdx = word[val] {
//            result.append(idx - beforeIdx)
//        } else {
//            result.append(-1)
//        }
//        word[val] = idx
//    }
//    
////    print(result)
//
////    for (index, val) in s.enumerated() {
////        if let beforeIndex = word[val] {
////            result.append(index - beforeIndex)
////        } else {
////            result.append(-1)
////        }
////        word[val] = index
////    }
//
//    return result
//}

// TODO: [] 한번더 풀기 (마지막 풀이 7.23)
func solution(_ s: String) -> [Int] {
    var word: [Character: Int] = [:]
    var result: [Int] = []
    
    for (index, char) in s.enumerated() {
        if let beforeIdx = word[char] {
            result.append(index - beforeIdx)
        } else {
            result.append(-1)
        }
        word[char] = index
    }
    print("result: \(result)")
    return result
}

solution("banana")
