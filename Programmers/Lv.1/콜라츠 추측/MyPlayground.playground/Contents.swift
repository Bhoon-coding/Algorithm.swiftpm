//func solution(_ num:Int) -> Int {
//
//    var count = 0
//    var number = num
//    let noResult = -1
//
//    while number != 1 {
//        if number % 2 == 0 {
//            number = number / 2
//            count += 1
//
//        } else if number % 2 == 1 {
//          number = number * 3 + 1
//            count += 1
//        }
//
//    }
//
//    return count >= 500 ? -1 : count
//}
//
//solution(6)
////solution(626331)
//

extension Int {
    enum Kind {
        case negative, zero, positive
    }
    var kind: Kind {
        switch self {
        case 0:
            return .zero
        case let x where x > 0:
            return .positive
        default:
            return .negative
        }
    }
}
3.kind
0.kind


func printIntegerKinds(_ numbers: [Int]) {
    for number in numbers {
        switch number.kind {
        case .negative:
            print("- ", terminator: "")
        case .zero:
            print("0 ", terminator: "")
        case .positive:
            print("+ ", terminator: "")
        }
    }
    print("")
}
printIntegerKinds([3, 19, -27, 0, -6, 0, 7])
// Prints "+ + - 0 - 0 + "
