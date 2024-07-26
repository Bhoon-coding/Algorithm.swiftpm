func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
    var currentCola: Int = n
    var result: Int = 0
    
    while currentCola >= a {
        currentCola -= a
        result += b
        currentCola += b
    }
    return result
}