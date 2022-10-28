import Foundation

func solution(_ numbers:[Int]) -> Int {
    var maxValue: Int = 0
    for i in 0...numbers.count - 1 {
        for j in 0...numbers.count - 1 {
            if i != j {
                maxValue = max(maxValue, numbers[i] * numbers[j])
            }
        }
    }
    return maxValue
}

solution([-1, 0, 0])
