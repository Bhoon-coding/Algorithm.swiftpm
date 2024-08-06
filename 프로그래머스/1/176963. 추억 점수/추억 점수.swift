import Foundation

func solution(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {
    var tempDic: [String: Int] = [:]
    var result: [Int] = []
    
    for (person, point) in zip(name, yearning) {
        tempDic[person] = point
    }
    
    for (index, people) in photo.enumerated() {
        result.append(0)
        for person in people {
            if let missedPoint = tempDic[person] {
                result[index] += missedPoint
            }
        }
    }

    return result
}