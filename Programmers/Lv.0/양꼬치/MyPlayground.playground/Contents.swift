import Foundation

func solution(_ n:Int, _ k:Int) -> Int {
    // TODO: [x] 양꼬치(n)가 10이상 이면 n / 10 몫 만큼 k 에서 빼기
    var freeBeverage: Int = 0
    var beverage = k
    var result: Int = 0
    if n >= 10 {
        freeBeverage = (n / 10)
        beverage -= freeBeverage
        result = n * 12000 + beverage * 2000
    } else {
        result = n * 12000 + k * 2000
    }
    // TODO: [x] n * 12000
    // TODO: [x] k * 2000

    return result
}


//func solution(_ n:Int, _ k:Int) -> Int {
//    print((n / 10) * 2000)
//    return (n * 12000) + (k * 2000) - ((n / 10) * 2000)
//}

solution(4, 6)
