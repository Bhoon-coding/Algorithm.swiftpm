import Foundation

func solution(_ array:[Int]) -> Int {
    return array
        .map { String($0) }
        .joined(separator: "")
        .filter { $0 == "7" }.count
}

solution([7, 77, 17])



