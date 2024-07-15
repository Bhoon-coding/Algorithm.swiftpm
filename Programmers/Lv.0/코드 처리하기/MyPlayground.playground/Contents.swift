import Foundation

func solution(_ code:String) -> String {
    var mode: Int = 0
    var ret: String = ""
    
    for (i, char) in code.enumerated() {
        if char == "1" {
            mode = mode == 0 ? 1 : 0
        } else {
            if mode == 0 && i % 2 == 0 {
                ret.append(char)
            } else if mode == 1 && i % 2 != 0 {
                ret.append(char)
            }
        }
    }
    
    return ret.isEmpty ? "EMPTY" : ret
}

solution("abc1abc1abc")
