import Foundation

func solution(_ my_string: String) -> String {
    var result: [Character] = []
    
    for char in my_string {
        result.insert(char, at: 0)
    }
    
    return String(result)
}
solution("jaron")


func solution2(_ my_string: String) -> String {
    return String(my_string.reversed())
}

solution2("jaron")
