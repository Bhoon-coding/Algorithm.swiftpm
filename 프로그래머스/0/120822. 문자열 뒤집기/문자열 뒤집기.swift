import Foundation

func solution(_ my_string: String) -> String {
    var result: [Character] = []
    
    for char in my_string {
        result.insert(char, at: 0)
    }
    
    return String(result)
}