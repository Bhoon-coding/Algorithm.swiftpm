import Foundation

func solution(_ number: Int, _ limit: Int, _ power: Int) -> Int {
    var divisorCount = Array(repeating: 0, count: number + 1)
    var totalIronWeight = 0

    // 약수의 개수를 계산
    for i in 1...number {
        // stride: (from: ~ 부터 | through: ~까지 | by: ~씩)
        // 각 배열에 배수의 갯수를 divisorCount 요소에 + 1
        for j in stride(from: i, through: number, by: i) {
            divisorCount[j] += 1
        }
    }

    // 공격력 제한을 적용하여 총 철의 무게 계산
    for count in divisorCount[1...] {
        if count > limit {
            totalIronWeight += power
        } else {
            totalIronWeight += count
        }
    }

    return totalIronWeight
}

solution(5, 2, 1)
