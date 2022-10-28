import Foundation

//func solution(_ numbers:[Int]) -> Int {
//    var maxValue: Int = 0
//    for i in 0...numbers.count - 1 {
//        for j in 0...numbers.count - 1 {
//            if i != j {
//                maxValue = max(maxValue, numbers[i] * numbers[j])
//            }
//        }
//    }
//    return maxValue
//}

import Foundation

func solution(_ numbers:[Int]) -> Int {
    var numbers = numbers.sorted()

    return max(numbers[0] * numbers[1], numbers[numbers.count-1] * numbers[numbers.count - 2])
}

solution([10, -20, 30, 5, 5, -20, 5])
