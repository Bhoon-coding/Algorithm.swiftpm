import Foundation

func solution(_ number:Int, _ limit:Int, _ power:Int) -> Int {
    var divisorCount: [Int] = Array(repeating: 0, count: number + 1)
    var totalIronWeight: Int = 0
    
    // 약수 구하기
    for i in 1...number {
        for j in stride(from: i, through: number, by: i) {
            divisorCount[j] += 1
        }
    }
    // 필요한 철의 무게 구하기
    for currentPower in divisorCount[1...] {
        totalIronWeight += currentPower > limit ? power : currentPower
    }
    
    return totalIronWeight
}