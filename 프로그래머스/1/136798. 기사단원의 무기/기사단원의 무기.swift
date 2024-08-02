
func solution(_ number: Int, _ limit: Int, _ power: Int) -> Int {
    var divisorCount = Array(repeating: 0, count: number + 1)
    var totalIronWeight = 0

    // 약수의 개수를 계산
    for i in 1...number {
        var j = i
        while j <= number {
            divisorCount[j] += 1
            j += i
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