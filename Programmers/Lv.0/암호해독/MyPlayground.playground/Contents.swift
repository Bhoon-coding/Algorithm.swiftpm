import Foundation

func solution(_ cipher:String, _ code:Int) -> String {
    return (1...cipher.count)
        .filter { $0.isMultiple(of: code) }
        .map { String(Array(cipher)[$0 - 1]) }
        .joined(separator: "")
}

solution("pfqallllabwaoclk", 2)
