import Foundation

func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    // TODO: [x] signs에서 false가 있는 index만 absolutes의 index로 접근해 ' - ' 로 바꾸기
    var result: [Int] = []
    for (idx, el) in signs.enumerated() {
        el == true ? result.append(absolutes[idx]) : result.append(-absolutes[idx])
    }
    // TODO: [x] 위 내용을 적용하고 총합 구하기 (reduce)
    return result.reduce(0, { $0 + $1 })
}

solution([4, 7, 12], [true, false, true])
