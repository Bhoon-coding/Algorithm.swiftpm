import Foundation

func solution(_ i:Int, _ j:Int, _ k:Int) -> Int {
    print(Array(i...j).flatMap { String($0).compactMap { Int(String($0)) } })
    return Array(i...j).flatMap { String($0).compactMap { Int(String($0)) } }.filter { $0 == k }.count
}

solution(1, 13, 1)
