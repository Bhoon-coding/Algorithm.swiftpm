import Foundation

func solution(_ emergency:[Int]) -> [Int] {
    var result: [Int] = []
    emergency.map { el in result.append(emergency.filter { $0 > el }.count + 1)}
    
    return result
}

solution([1, 2, 3, 4])
