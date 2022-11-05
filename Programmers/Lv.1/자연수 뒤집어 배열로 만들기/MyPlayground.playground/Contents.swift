//func solution(_ n:Int64) -> [Int] {
//    var arr = String(n).map { $0 }
//    var resultStr: [String] = []
//    var resultInt: [Int] = []
//    for i in arr {
//        resultStr.append(String(i))
//    }
//    for _ in resultStr {
//        resultInt.append(Int(resultStr.popLast()!)!)
//    }
//    return resultInt
//}
//
//solution(12345)

// MARK: - 리팩토링

 func solution(_ n:Int64) -> [Int] {
     var result: [Int] = []
     var arr = String(n).reversed().map { result.append(Int(String($0))!) }
     return result
 }


// MARK: - 다른사람풀이

//func solution(_ n:Int64) -> [Int] {
//    let arr = String(n).compactMap { Int(String($0)) }
//    return arr.reversed()
//}
//
//solution(12345)
