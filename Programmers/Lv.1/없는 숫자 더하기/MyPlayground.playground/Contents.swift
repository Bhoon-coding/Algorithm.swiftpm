import Foundation

func solution(_ numbers:[Int]) -> Int {
    return 45 - numbers.reduce(0){ $0 + $1 }
}

solution([1,2,3,4,6,7,8,9,0])
