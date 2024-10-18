func solution(_ a:Int, _ b:Int) -> Int64 {
    if a == b { return Int64(a) }
    
    let sortedArr: [Int] = [a, b].sorted()
    var result: Int = 0
    
    for num in stride(from: sortedArr[0], through: sortedArr[1], by: 1) {
        result += num
    }
    return Int64(result)
}