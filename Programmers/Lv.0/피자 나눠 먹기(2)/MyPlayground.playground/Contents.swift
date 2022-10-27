import Foundation

func solution(_ n:Int) -> Int {
    var pizza = 1
    while (6 * pizza) % n != 0 {
        pizza += 1
    }
    return pizza
}

solution(10)
