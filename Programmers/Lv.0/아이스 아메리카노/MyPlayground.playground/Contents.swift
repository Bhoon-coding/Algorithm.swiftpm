import UIKit

func solution(_ money:Int) -> [Int] {
    let coffeePrice: Int = 5500
    let coffeeCount: Int = money / coffeePrice
    let change: Int = money - (coffeePrice * coffeeCount)
    return [coffeeCount, change]
}

solution(15000)
