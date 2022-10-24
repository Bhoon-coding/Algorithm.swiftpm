import Foundation

func solution(_ array:[Int], _ height:Int) -> Int {
    return array.filter { $0 > height }.count
}

solution([149, 180, 192, 170], 167)
