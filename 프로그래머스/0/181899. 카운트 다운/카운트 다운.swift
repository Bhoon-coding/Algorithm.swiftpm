import Foundation

func solution(_ start_num:Int, _ end_num:Int) -> [Int] {
    var startNum = start_num
    var result: [Int] = []
    while startNum >= end_num {
        result.append(startNum)
        startNum -= 1
    }
    return result
}