import Foundation

func solution(_ n:Int, _ control:String) -> Int {
    var result: Int = n
    
    for char in control {
        switch char {
        case "w":
            result += 1
        case "s":
            result -= 1
        case "d":
            result += 10
        default:
            result -= 10
        }
    }
    return result
}
solution(0, "wsdawsdassw")
