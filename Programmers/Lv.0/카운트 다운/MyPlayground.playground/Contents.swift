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
solution(10, 3)


// MARK: - 다른 풀이

func solution2(_ start_num:Int, _ end_num:Int) -> [Int] {
    var result: [Int] = []
    
    for i in stride(from: start_num, through: end_num, by: -1) {
        result.append(i)
    }
    
    return result
}

solution2(10, 5)

// MARK: - 다른사람 풀이

func solution3(_ start:Int, _ end:Int) -> [Int] {
    return (end...start).reversed()
}

solution3(10, 3)
