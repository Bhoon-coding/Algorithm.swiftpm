import Foundation

func solution(_ num_list:[Int]) -> [Int] {
    guard !num_list.isEmpty else { return [] }
    var impNumList = num_list
    let lastIndex = impNumList.endIndex - 1
    let secLastIndex = impNumList.endIndex - 2
    let lastNumValue = impNumList[lastIndex]
    let secNumValue = impNumList[secLastIndex]
    if lastNumValue > secNumValue {
        let newValue = lastNumValue - secNumValue
        impNumList.append(newValue)
    } else {
        let newValue = lastNumValue * 2
        impNumList.append(newValue)
    }
    return impNumList
}