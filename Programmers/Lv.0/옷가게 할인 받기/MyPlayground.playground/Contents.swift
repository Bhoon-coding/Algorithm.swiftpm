import Foundation

func solution(_ price:Int) -> Int {
    var result: Double = Double(price)
    
    if price >= 100000 && price < 300000 {
        result = result * 0.95
    } else if price >= 300000 && price < 500000 {
        result = result * 0.9
    } else if price >= 500000 {
        result = result * 0.8
    }
    return Int(result)
}

solution(1000000)
