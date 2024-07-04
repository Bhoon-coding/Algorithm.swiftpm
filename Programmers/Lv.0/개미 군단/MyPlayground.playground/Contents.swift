import Foundation

func solution(_ hp:Int) -> Int {
    guard hp > 0 else { return 0 }
    var antCount: Int = 0
    var impHp: Int = hp
    let general: Int = 5
    let soldier: Int = 3
    let worker: Int = 1

    antCount += impHp / general
    impHp = impHp % general
    
    antCount += impHp / soldier
    impHp = impHp % soldier
    
    antCount += impHp / worker
    return antCount
}

solution(999)

// 다른사람 풀이

func solution2(_ hp:Int) -> Int {
    hp/5 + hp%5/3 + hp%5%3
    return 0
}

solution2(999)
