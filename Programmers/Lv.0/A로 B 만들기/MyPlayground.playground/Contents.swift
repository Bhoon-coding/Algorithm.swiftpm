import Foundation

 // MARK: - 오답 (모든 순서에 따라 바뀌는지 아닌지 확인해야함)

//func solution(_ before:String, _ after:String) -> Int {
//    return String(before.reversed()) == after ? 1 : 0
//}

func solution(_ before:String, _ after:String) -> Int {
    return before.sorted() == after.sorted() ? 1 : 0
}

solution("allpe", "apple")
