import Foundation

func solution(_ q:Int, _ r:Int, _ code:String) -> String {
    var result: String = ""
    for (index, char) in code.enumerated() {
        if index % q == r {
            result.append(char)
        }
    }
    return result
}