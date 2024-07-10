import Foundation

func solution(_ n:Int) -> [Int] {
    var result: [Int] = [n]
    var tempValue: Int = n
    
    while tempValue != 1 {
        if tempValue % 2 == 0 {
            tempValue = tempValue / 2
            result.append(tempValue)
        } else {
            tempValue = 3 * tempValue + 1
            result.append(tempValue)
        }
    }
    
    return result
}