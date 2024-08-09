import Foundation

func solution(_ s:String) -> Bool {
    var ans:Bool = false
    var tempArr: [String] = []
    
    // ")"를 append 하기전 tempArr 마지막 index에 "(" 가 있으면 pop(removeLast)
    // 없으면 push(append)
    for bracket in s {
        if !tempArr.isEmpty && tempArr[tempArr.endIndex - 1] == "(" && bracket == ")" {
            tempArr.removeLast()
        } else {
            tempArr.append(String(bracket))
        }
    }
    // 마지막까지 tempArr가 비어있지 않으면 return false
    ans = tempArr.isEmpty ? true : false
    
    return ans
}