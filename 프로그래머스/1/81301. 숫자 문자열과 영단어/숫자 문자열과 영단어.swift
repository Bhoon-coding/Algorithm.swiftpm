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
    
    // Int인지 확인
    // TODO: [] Int가 아니면 tempStrArr에 append
    // TODO: [] Int면 result에 append
    // numDic 탐색 tempStrArr에
    
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