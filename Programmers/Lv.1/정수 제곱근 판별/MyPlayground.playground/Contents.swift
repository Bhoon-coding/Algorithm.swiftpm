import Foundation

func solution(_ n:Int64) -> Int64 {
    let sqrt = sqrt(Double(n)) // Error: variable used within its own initial value
    var result: Int64 = 0
    
    if pow(sqrt, 2) == Double(n) {
        result = Int64(pow(sqrt + 1, 2))
    } else {
        result = -1
    }
    
    return result
}

solution(121)


func solution2(_ n:Int64) -> Int64 {
    let num = Int64(sqrt(Double(n)))
    return num * num == n ? (num + 1) * (num + 1) : -1
}

solution(3)
