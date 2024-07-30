import Foundation

func solution(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {
    var tempDic: [String: Int] = [:]
    
    for (person, point) in zip(name, yearning) {
        tempDic[person] = point
        print(tempDic)
    }
    
    var result: [Int] = []
    
    for people in photo {
        var sum = 0
        
        for person in people {
            if let missedPoint = tempDic[person] {
                sum += missedPoint
            }
        }
        result.append(sum)
    }
    return result
}