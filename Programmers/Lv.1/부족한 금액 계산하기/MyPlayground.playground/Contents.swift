import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    var totalPrice = 0
    var answer:Int64 = -1
    for i in 1...count { totalPrice += (i * price) }
    answer = Int64(totalPrice - money)
    return totalPrice > money ? answer : 0
}

solution(3, 20, 4)


