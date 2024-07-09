import Foundation

func solution(_ x1:Bool, _ x2:Bool, _ x3:Bool, _ x4:Bool) -> Bool {
    var tempOne: Bool = x1 || x2 ? true : false
    var tempTwo: Bool = x3 || x4 ? true : false
    
    return tempOne && tempTwo
}

solution(false, true, true, true)

// MARK: 다른사람의 풀이

func solution2(_ x1:Bool, _ x2:Bool, _ x3:Bool, _ x4:Bool) -> Bool {
    return (x1 || x2) && (x3 || x4)
}

solution2(false, true, true, true)
