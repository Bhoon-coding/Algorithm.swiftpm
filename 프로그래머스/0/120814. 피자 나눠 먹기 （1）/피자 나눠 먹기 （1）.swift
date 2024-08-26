func solution(_ n:Int) -> Int {
    var pizza: Int = 1
    var needCount = n
    
    while needCount > 7 {
        needCount -= 7
        pizza += 1
    }
    
    return pizza
}