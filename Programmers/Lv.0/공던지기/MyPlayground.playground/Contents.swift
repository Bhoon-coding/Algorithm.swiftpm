import Foundation

func solution(_ numbers:[Int], _ k:Int) -> Int {
    print((k - 1) % 3)
    return numbers[2 * (k - 1) % numbers.count]
}

solution([1, 2, 3, 4, 5, 6], 5)
