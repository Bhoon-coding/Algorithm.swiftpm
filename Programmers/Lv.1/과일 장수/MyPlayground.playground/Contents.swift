import Foundation

func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
    var result: Int = 0
    var box: [Int] = []
    
    // 내림차순 정렬
    var sortedScore: [Int] = score.sorted { $0 > $1 }
    // 한 상자의 가격 p * m  (p = 상자의 담긴 가장 낮은 점수, m = 상자에 담긴 사과의 갯수)
    for apple in sortedScore {
        if box.count < m {
            box.append(apple)
        }
        
        if box.count == m {
            if let minScore = box.min() {
                result += minScore * m
                box.removeAll()
            }
        }
    }
    // removeAll
    // 다시 담고 이전 상자 가격 + 상자 가격
    // 반복
    
    return result
}

//solution(4, 3, [4, 1, 2, 2, 4, 4, 4, 4, 1, 2, 4, 2])


// 다른 사람 풀이

import Foundation

func solution2(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
    let s = score.sorted(by: >)
    // from: ~만큼 | to: ~까지 | by: ~만큼
    return stride(from: m - 1, to: score.count, by: m)
        .reduce(0) { $0 + s[$1] * m }
}

solution2(4, 3, [4, 1, 2, 2, 4, 4, 4, 4, 1, 2, 4, 2])

