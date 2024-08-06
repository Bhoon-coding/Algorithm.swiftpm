import Foundation

func solution(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {
    var tempDic: [String: Int] = [:]
    
    for (person, point) in zip(name, yearning) { // zip을 사용해 key:value 상태로 저장
        tempDic[person] = point
        // 1. ["may": 5]
        // 2. ["may": 5, "kein": 10]
        // 3. ["may": 5, "kein": 10, "kain": 1]
        // 4. ["kain": 1, "kein": 10, "may": 5, "radi": 3]
        print(tempDic)
    }
    
    var result: [Int] = []
    
    for people in photo {
        var sum = 0
        
        for person in people {
            if let missedPoint = tempDic[person] { // tempDic에 person 키 값이 있으면 점수 합산
                sum += missedPoint
            }
        }
        result.append(sum)
    }
    return result
}

//solution(
//    ["may", "kein", "kain", "radi"],
//    [5, 10, 1, 3],
//    [["may", "kein", "kain", "radi"],["may", "kein", "brin", "deny"], ["kon", "kain", "may", "coni"]]
//)


// 다시 풀어보기
func solution2(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {
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

solution2(
    ["may", "kein", "kain", "radi"],
    [5, 10, 1, 3],
    [["may", "kein", "kain", "radi"],["may", "kein", "brin", "deny"], ["kon", "kain", "may", "coni"]]
)
