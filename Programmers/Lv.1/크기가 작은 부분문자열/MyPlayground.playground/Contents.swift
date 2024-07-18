import Foundation

func solution(_ t:String, _ p:String) -> Int {
    var tempT: String = t
    let pLength = p.count
    var tempArr: [Int] = []
    
    while tempT.count >= pLength {
        let element = Int(tempT.prefix(pLength))!
        tempT.removeFirst()
        tempArr.append(element)
    }
    
    return tempArr.filter { $0 <= Int(p)! }.count
}

solution("10203", "15")
