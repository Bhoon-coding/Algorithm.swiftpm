import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
//    // MARK: - n: 전체학생 수,  체육쉅을 들을 수 있는 학생의 최댓값 구하기(max)
//    // TODO: [o] 가능한 학생 수 = 전체학생 수 - lost.count
//    var totalStudents = n
//    var lostStudents = lost
//    var reserveStudents = reserve
//    var possibleStudents = totalStudents - lostStudents.count
//
//    // TODO: [] reserve[i]의 +1,-1값이 lost[i]면 possibleStudents + 1
//    while !lostStudents.isEmpty {
//        if reserveStudents.contains(lostStudents[0] + 1) || reserveStudents.contains(lostStudents[0] - 1) {
//            possibleStudents += 1
//            lostStudents.removeFirst()
//        } else {
//            lostStudents.removeFirst()
//        }
//    }
//    return possibleStudents
    
    var losted = lost.filter { !reserve.contains($0) }
    var reserved = reserve.filter { !lost.contains($0) }
    var ans = n - losted.count
    
    for i in 0..<losted.count {
        var has: Int?
        
        for j in 0..<reserved.count {
            if losted[i] == reserved[j] - 1 || losted[i] == reserved[j] + 1 {
                has = j
                print(j)
                break
            }
        }
        
        if let index = has {
            reserved.remove(at: index)
            ans += 1
        }
    }
    return ans
}

solution(5, [2, 4], [1, 3, 5])
