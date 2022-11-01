import Foundation

let ageKey: [Int: String] = [
    0: "a",
    1: "b",
    2: "c",
    3: "d",
    4: "e",
    5: "f",
    6: "g",
    7: "h",
    8: "i",
    9: "j"
]

func solution(_ age:Int) -> String {
    var result: [String] = []
    let digits: [Int] = String(age).compactMap { Int(String($0)) }
    for num in digits {
        result.append(ageKey[num]!)
    }
    
    return result.joined()
}

solution(23) // "cd"


// 다른사람 풀이

/*
 func solution(_ age:Int) -> String {
     let alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j"]
     return String(age).map{alphabet[Int(String($0))!]}.joined()
 }
*/
