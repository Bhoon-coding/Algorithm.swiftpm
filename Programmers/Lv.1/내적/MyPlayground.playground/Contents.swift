import Foundation

func solution(_ a:[Int], _ b:[Int]) -> Int {
    var saveArr: [Int] = []
    for (idx, num) in b.enumerated() {
        saveArr.append(num * a[idx])
    }
    let result: Int = saveArr.reduce(0, { $0 + $1})
    return result
}

solution([1,2,3,4], [-3,-1,0,2])


// 다른사람의 풀이

// zip 두 시퀀스 길이중 같거나, 짧은 시퀀스로 새로운 시퀀스를 만들어 냅니다.
//let a = zip(a, b).map { $0 * $1 }.reduce(0) { $0 + $1 }
