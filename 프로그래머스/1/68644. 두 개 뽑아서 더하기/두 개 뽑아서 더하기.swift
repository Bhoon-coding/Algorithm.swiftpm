import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    var tempArr: [Int] = []
    var result: [Int] = []
    
    for (i, num) in numbers.enumerated() {
        for j in 1..<numbers.count {
            if i != j {
                if !tempArr.contains(num + numbers[j]) {
                    tempArr.append(num + numbers[j])
                }
            }
        }
    }
    result = tempArr.sorted(by: <)
    return result
}