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

solution([2,1,3,4,1])



// 다른사람의 풀이
func solution2(_ numbers: [Int]) -> [Int] {
    var arr: [Int] = []
    
    for i in 0..<numbers.count {
        for j in i + 1..<numbers.count {
            arr.append(numbers[i] + numbers[j])
        }
    }
    return Set(arr).sorted()
}

solution2([2,1,3,4,1])
