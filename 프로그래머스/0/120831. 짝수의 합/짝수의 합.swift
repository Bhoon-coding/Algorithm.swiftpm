func solution(_ n:Int) -> Int {
    var tempArr: [Int] = []
    
    for num in 1...n where num % 2 == 0 {
        tempArr.append(num)
    }
    
    return tempArr.reduce(0, +)
}