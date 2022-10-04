import Foundation

func solution(_ s:String) -> Int {
    guard let int = Int(s) else { return 0 }
    return s.contains("-") ? int : int
}

solution("1234")
