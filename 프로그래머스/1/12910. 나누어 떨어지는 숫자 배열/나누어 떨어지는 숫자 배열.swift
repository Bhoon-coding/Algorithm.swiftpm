func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    var result: [Int] = []
    
    for element in arr {
        if element % divisor == 0 {
            result.append(element)
        }
    }
    
    return result.isEmpty ? [-1] : result.sorted()
}