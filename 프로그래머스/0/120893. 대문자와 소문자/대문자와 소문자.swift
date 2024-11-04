import Foundation

func solution(_ my_string:String) -> String {
    var result = my_string.map { $0.isLowercase ? $0.uppercased() : $0.lowercased() }
    return result.joined()
}