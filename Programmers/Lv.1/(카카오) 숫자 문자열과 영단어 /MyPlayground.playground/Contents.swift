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


func solution2(_ s:String) -> Int {
    let arr = ["zero","one","two","three","four","five","six","seven","eight","nine"]
    var str = s
    
    for i in 0..<arr.count {
        str = str.replacingOccurrences(of: arr[i], with: String(i))
    }
    
    return Int(str)!
}

solution2("2three45sixseven")
