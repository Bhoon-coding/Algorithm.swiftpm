import Foundation

func solution(_ emergency:[Int]) -> [Int] {
    // TODO: [] 숫자가 가장 클 수록 1 작을 수록 +1
    // TODO: [] 비교를 계속적으로 해야하는데
    var priority: [Int] = []
    for i in 0...emergency.count - 1 {
        priority.append(0)
        for j in 1...emergency.count - 1 {
            if emergency[i] > emergency[j] {
                priority[i] = 1
            } else { // j가 더크면
                priority[i] += 1
                priority[j] = 1
            }
        }
    }
    print(priority)
    return []
}

solution([99, 76, 4])
