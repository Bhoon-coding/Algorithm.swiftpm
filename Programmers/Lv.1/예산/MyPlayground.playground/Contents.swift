//import Foundation
//
//func solution(_ d:[Int], _ budget:Int) -> Int {
//    var money = budget
//
//    let result = d.sorted().filter {
//        if money - $0 >= 0 {
//            money -= $0
//            return true
//        } else {
//            return false
//        }
//    }.count
//    return result
//}
//
//solution([1,3,2,5,4], 9)

func test(num: inout Int) {
    num = 10
}

var x = 5

test(num: &x)
print(x)
