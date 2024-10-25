import Foundation

func solution(_ n:Int) -> Int {
    let sqrtRoot = sqrt(Double(n))
    
    return ceil(sqrtRoot) == sqrtRoot ? 1 : 2
}